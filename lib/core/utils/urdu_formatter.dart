import 'package:intl/intl.dart';

/// Formats amounts, units, and dates in Pakistan-appropriate locale.
/// Numbers use Urdu-style eastern Arabic numerals where UI requests it.
class UrduFormatter {
  UrduFormatter._();

  // ─── Currency ─────────────────────────────────────────────────────

  /// Formats a PKR amount: "₨ ۱,۲۳۴"
  static String pkr(double amount) {
    final formatted = NumberFormat('#,##0.00', 'en_PK').format(amount);
    return '₨ $formatted';
  }

  /// Formats PKR in Eastern Arabic numerals (Urdu digits)
  static String pkrUrdu(double amount) {
    final formatted = NumberFormat('#,##0.00', 'en_PK').format(amount);
    return '₨ ${_toUrduDigits(formatted)}';
  }

  // ─── Units ────────────────────────────────────────────────────────

  /// "۳۵۰ یونٹ" or "350 Units"
  static String units(int units, {String locale = 'ur'}) {
    if (locale == 'en') {
      return '$units Units';
    }
    return '${_toUrduDigits(units.toString())} یونٹ';
  }

  static String unitsPlain(int units) => units.toString();

  // ─── Date & Month ─────────────────────────────────────────────────

  /// "اکتوبر ۲۰۲۴" or "October 2024"
  static String billMonth(DateTime date, {String locale = 'ur'}) {
    if (locale == 'en') {
      return DateFormat('MMMM yyyy').format(date);
    }
    final month = _urduMonths[date.month - 1];
    final year = _toUrduDigits(date.year.toString());
    return '$month $year';
  }

  /// "۲۵ اکتوبر ۲۰۲۴" or "25 October 2024"
  static String fullDate(DateTime date, {String locale = 'ur'}) {
    if (locale == 'en') {
      return DateFormat('dd MMMM yyyy').format(date);
    }
    final day = _toUrduDigits(date.day.toString());
    final month = _urduMonths[date.month - 1];
    final year = _toUrduDigits(date.year.toString());
    return '$day $month $year';
  }

  /// Formats due date with days remaining indicator
  static String dueDateWithRemaining(DateTime dueDate, {String locale = 'ur'}) {
    final now = DateTime.now();
    final diff = dueDate.difference(now).inDays;
    final dateStr = fullDate(dueDate, locale: locale);

    if (locale == 'en') {
      if (diff < 0) return '$dateStr (Expired)';
      if (diff == 0) return '$dateStr (Last Day)';
      return '$dateStr ($diff days left)';
    }

    if (diff < 0) return '$dateStr (میعاد ختم)';
    if (diff == 0) return '$dateStr (آج آخری دن)';
    return '$dateStr (${_toUrduDigits(diff.toString())} دن باقی)';
  }

  // ─── Percentage ───────────────────────────────────────────────────

  /// "۱۸٪"
  static String percent(double value) =>
      '${_toUrduDigits((value * 100).toStringAsFixed(0))}٪';

  // ─── Helpers ─────────────────────────────────────────────────────

  static String _toUrduDigits(String input) {
    const westernDigits = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
    const urduDigits = ['۰', '۱', '۲', '۳', '۴', '۵', '۶', '۷', '۸', '۹'];
    var result = input;
    for (int i = 0; i < westernDigits.length; i++) {
      result = result.replaceAll(westernDigits[i], urduDigits[i]);
    }
    return result;
  }

  static const List<String> _urduMonths = [
    'جنوری',
    'فروری',
    'مارچ',
    'اپریل',
    'مئی',
    'جون',
    'جولائی',
    'اگست',
    'ستمبر',
    'اکتوبر',
    'نومبر',
    'دسمبر',
  ];
}
