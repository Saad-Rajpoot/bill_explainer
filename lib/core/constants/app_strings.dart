/// All UI-facing strings for Bijli Samjho.
/// ALL strings are in Urdu (6th-grade reading level).
/// English comments explain each string for developer reference.
abstract class AppStrings {
  // ─── App Info ─────────────────────────────────────────────────────
  static const String appName = 'بجلی سمجھو';
  static const String appTagline = 'اپنا بجلی بل آسانی سے سمجھیں';

  // ─── Onboarding ───────────────────────────────────────────────────
  static const String onboarding1Title = 'بل کی تصویر لیں';
  static const String onboarding1Desc =
      'اپنے بجلی کے بل کی فوٹو لیں یا گیلری سے منتخب کریں';

  static const String onboarding2Title = 'ہم سمجھائیں گے';
  static const String onboarding2Desc =
      'ہر چارج کا آسان اردو میں مطلب جانیں — FC، GST، ED سب کچھ';

  static const String onboarding3Title = 'زیادہ بل؟ شکایت کریں';
  static const String onboarding3Desc =
      'اگر بل غلط ہے تو فوری شکایت بھیجیں — واٹس ایپ پر';

  static const String onboardingSkip = 'چھوڑیں'; // Skip
  static const String onboardingNext = 'آگے'; // Next
  static const String onboardingStart = 'شروع کریں'; // Get Started

  // ─── DISCO Selection ──────────────────────────────────────────────
  static const String discoSelectTitle = 'اپنی بجلی کمپنی منتخب کریں';
  static const String discoSelectSubtitle =
      'آپ کے علاقے کی بجلی فراہم کرنے والی کمپنی کون سی ہے؟';
  static const String discoConfirm = 'تصدیق کریں'; // Confirm

  // ─── Home ─────────────────────────────────────────────────────────
  static const String homeGreeting = 'السلام علیکم'; // Hello
  static const String homeScanButton = 'بل اسکین کریں'; // Scan Bill
  static const String homeLastBill = 'آخری بل'; // Last Bill
  static const String homeNoBill = 'ابھی تک کوئی بل اسکین نہیں کیا';
  static const String homeQuickStats = 'ابھی کی صورت حال'; // Quick Stats
  static const String homeUnitsThisMonth = 'اس ماہ یونٹ';
  static const String homeAmountThisMonth = 'اس ماہ رقم';
  static const String homeViewHistory = 'تمام بل دیکھیں'; // View All Bills
  static const String homeCompare = 'بلوں کا موازنہ'; // Compare Bills

  // ─── Scan Page ────────────────────────────────────────────────────
  static const String scanTitle = 'بل اسکین کریں';
  static const String scanCamera = 'کیمرہ سے تصویر لیں'; // Take Photo
  static const String scanGallery = 'گیلری سے منتخب کریں'; // From Gallery
  static const String scanTip = 'بہتر نتیجے کے لیے روشن جگہ پر تصویر لیں';
  static const String scanCrop = 'بل کا حصہ منتخب کریں'; // Crop to bill area
  static const String scanProcess = 'بل پڑھا جا رہا ہے…'; // Processing...

  // ─── Processing Loading Tips (shown during OCR) ──────────────────
  static const List<String> processingTips = [
    'FC کا مطلب ہے بجلی بنانے کا خرچ',
    'GST حکومت کا سیلز ٹیکس ہے',
    'ED بجلی ڈیوٹی ہے — صوبائی ٹیکس',
    'TV Fee صرف ۳۵ روپے ہونی چاہیے',
    'NJ سرچارج نیلم جہلم منصوبے کے لیے ہے',
    'اپنا بل ہر ماہ چیک کریں',
    'زیادہ یونٹ مطلب زیادہ ریٹ — سلیب کا نظام',
  ];

  // ─── Bill Explanation Page ────────────────────────────────────────
  static const String explainTitle = 'آپ کا بل'; // Your Bill
  static const String explainConsumerNo = 'صارف نمبر'; // Consumer No.
  static const String explainBillMonth = 'بل مہینہ'; // Bill Month
  static const String explainDueDate = 'آخری تاریخ'; // Due Date
  static const String explainUnits = 'استعمال شدہ یونٹ'; // Units Used
  static const String explainTotalAmount = 'کل رقم'; // Total Amount
  static const String explainBreakdown = 'تفصیل'; // Breakdown
  static const String explainShareBill = 'بل شیئر کریں'; // Share Bill
  static const String explainComplaint = 'شکایت کریں'; // File Complaint
  static const String explainAllGood = 'آپ کا بل درست ہے ✓';
  static const String explainOvercharged = 'آپ سے زیادہ وصول کیا گیا! ⚠';
  static const String explainCheckEach = 'ہر چارج چیک کریں';

  // ─── Charge Names (shown on cards) ────────────────────────────────
  // FC — Fuel Cost Adjustment
  static const String chargeFCName = 'ایندھن قیمت ایڈجسٹمنٹ (FC)';
  static const String chargeFCExplain =
      'بجلی بنانے میں تیل، گیس اور کوئلے کا خرچ۔ '
      'یہ حکومت طے کرتی ہے — ہر ماہ بدلتی ہے۔';

  // QTA — Quarterly Tariff Adjustment
  static const String chargeQTAName = 'سہ ماہی ٹیرف ایڈجسٹمنٹ (QTA)';
  static const String chargeQTAExplain =
      'ہر تین ماہ بعد NEPRA بجلی کی قیمت ایڈجسٹ کرتا ہے۔ '
      'یہ اوپر یا نیچے دونوں ہو سکتا ہے۔';

  // ED — Electricity Duty
  static const String chargeEDName = 'بجلی ڈیوٹی (ED)';
  static const String chargeEDExplain =
      'صوبائی حکومت کا ٹیکس — بجلی کے استعمال پر لگتا ہے۔ '
      'عام طور پر بل کا ۱.۵٪ ہوتا ہے۔';

  // GST — General Sales Tax
  static const String chargeGSTName = 'سیلز ٹیکس (GST)';
  static const String chargeGSTExplain =
      'وفاقی حکومت کا ٹیکس — عام طور پر ۱۸٪ ہوتا ہے۔ '
      'یہ سب چارجز پر لگتا ہے — بجلی کی قیمت پر بھی۔';

  // TV Fee
  static const String chargeTVName = 'ٹی وی فیس';
  static const String chargeTVExplain =
      'PTV (سرکاری ٹی وی) کے لیے فیس — صرف ۳۵ روپے ہونی چاہیے۔ '
      'اگر زیادہ ہے تو شکایت کریں۔';

  // NJ Surcharge — Neelum Jhelum
  static const String chargeNJName = 'نیلم جہلم سرچارج (NJ)';
  static const String chargeNJExplain =
      'نیلم جہلم پن بجلی منصوبے کے قرض کی ادائیگی کے لیے سرچارج۔ '
      'NEPRA نے یہ سب صارفین پر لگایا ہے۔';

  // TDS — Tax Deducted at Source
  static const String chargeTDSName = 'ود ہولڈنگ ٹیکس (TDS)';
  static const String chargeTDSExplain =
      'آمدنی ٹیکس کا ایک حصہ — فائلر کے لیے کم، '
      'نان فائلر کے لیے زیادہ ہوتا ہے۔';

  // Fixed Charges
  static const String chargeFixedName = 'مقررہ چارجز';
  static const String chargeFixedExplain =
      'یہ ہر ماہ ایک جیسے ہوتے ہیں — بجلی استعمال کریں یا نہ کریں۔ '
      'میٹر کا کرایہ اور سروس چارج شامل ہیں۔';

  // Energy Charges
  static const String chargeEnergyName = 'توانائی چارجز';
  static const String chargeEnergyExplain =
      'آپ کے استعمال کردہ یونٹوں کا بنیادی خرچ۔ '
      'جتنے زیادہ یونٹ — اتنا زیادہ ریٹ (سلیب نظام)۔';

  // ─── Traffic Light Labels ─────────────────────────────────────────
  static const String statusNormal = 'ٹھیک ہے'; // All good
  static const String statusHigh = 'قدرے زیادہ'; // Slightly high
  static const String statusOvercharged = 'زیادہ وصول کیا'; // Overcharged

  // ─── Overcharge Alert ─────────────────────────────────────────────
  static const String overchargeAlertTitle = 'زیادہ بل کا خدشہ!';
  static const String overchargeAlertBody =
      'تجزیے کے مطابق آپ سے غیر معمولی طور پر زیادہ وصول کیا گیا ہے۔';
  static const String overchargeExpected = 'متوقع رقم';
  static const String overchargeCharged = 'وصول کی گئی رقم';
  static const String overchargeDiff = 'فرق';
  static const String overchargeComplain = 'ابھی شکایت کریں';

  // ─── Complaint Generator ──────────────────────────────────────────
  static const String complaintTitle = 'شکایت';
  static const String complaintGenerating = 'شکایت تیار ہو رہی ہے…';
  static const String complaintWhatsApp = 'واٹس ایپ پر بھیجیں';
  static const String complaintHelpline = 'ہیلپ لائن نمبر';
  static const String complaintTemplate =
      'میرا بجلی بل غلط لگتا ہے۔ صارف نمبر: {consumer_no}، '
      'بل مہینہ: {month}، وصول کی گئی رقم: {charged}، '
      'متوقع رقم: {expected}۔ برائے مہربانی جائزہ لیں۔';

  // ─── Bill History ─────────────────────────────────────────────────
  static const String historyTitle = 'بل کی تاریخ'; // Bill History
  static const String historyEmpty = 'ابھی تک کوئی بل محفوظ نہیں';
  static const String historyMonth = 'ماہ'; // Month
  static const String historyUnits = 'یونٹ'; // Units
  static const String historyAmount = 'رقم'; // Amount
  static const String historyTrend = 'رجحان'; // Trend
  static const String historyMoreUnits = 'اس ماہ {x} یونٹ زیادہ';
  static const String historyLessUnits = 'اس ماہ {x} یونٹ کم';

  // ─── Compare Bills ────────────────────────────────────────────────
  static const String compareTitle = 'بلوں کا موازنہ';
  static const String compareBill1 = 'پہلا بل';
  static const String compareBill2 = 'دوسرا بل';
  static const String compareSelect = 'بل منتخب کریں';
  static const String compareDiff = 'فرق';

  // ─── Settings ─────────────────────────────────────────────────────
  static const String settingsTitle = 'ترتیبات'; // Settings
  static const String settingsDisco = 'بجلی کمپنی';
  static const String settingsConsumerNo = 'صارف نمبر';
  static const String settingsDarkMode = 'تاریک طریقہ'; // Dark Mode
  static const String settingsNotifications = 'اطلاعات'; // Notifications
  static const String settingsLanguage = 'زبان'; // Language
  static const String settingsAbout = 'ایپ کے بارے میں';
  static const String settingsPrivacy = 'رازداری کی پالیسی';
  static const String settingsPremium = 'پریمیم خریدیں';
  static const String settingsVersion = 'ورژن';

  // ─── Premium ──────────────────────────────────────────────────────
  static const String premiumTitle = 'بجلی سمجھو پریمیم';
  static const String premiumSubtitle = 'زیادہ فائدے — ایک بار خریدیں';
  static const String premiumFeature1 = 'اشتہار بند';
  static const String premiumFeature2 = 'لا محدود بل محفوظ کریں';
  static const String premiumFeature3 = 'تفصیلی تجزیہ';
  static const String premiumFeature4 = 'خودکار شکایت';
  static const String premiumMonthly = 'ماہانہ — ۱۴۹ روپے';
  static const String premiumYearly = 'سالانہ — ۹۹۹ روپے';
  static const String premiumBuyNow = 'ابھی خریدیں';
  static const String premiumRestore = 'خریداری بحال کریں';

  // ─── Errors ────────────────────────────────────────────────────────
  static const String errorGeneric = 'کچھ غلط ہو گیا۔ دوبارہ کوشش کریں۔';
  static const String errorNoInternet =
      'انٹرنیٹ نہیں ہے — آف لائن کام جاری ہے';
  static const String errorOcrFailed = 'بل پڑھنے میں مسئلہ ہوا۔ واضح تصویر لیں۔';
  static const String errorCameraPermission =
      'کیمرے کی اجازت دیں — ترتیبات سے';
  static const String errorStoragePermission =
      'اسٹوریج کی اجازت دیں — ترتیبات سے';
  static const String errorBillNotFound = 'بل نہیں ملا';
  static const String errorInvalidBill = 'یہ بجلی کا بل نہیں لگتا';
  static const String errorLoginFailed = 'لاگ ان نہیں ہو سکا۔ دوبارہ کوشش کریں۔';
  static const String errorSyncFailed = 'ڈیٹا محفوظ نہیں ہوا — بعد میں ہو گا';

  // ─── Success Messages ─────────────────────────────────────────────
  static const String successBillSaved = 'بل محفوظ ہو گیا';
  static const String successComplaintSent = 'شکایت بھیج دی گئی';
  static const String successSync = 'ڈیٹا محفوظ ہو گیا';

  // ─── Actions ──────────────────────────────────────────────────────
  static const String actionRetry = 'دوبارہ کوشش'; // Retry
  static const String actionCancel = 'منسوخ'; // Cancel
  static const String actionConfirm = 'تصدیق'; // Confirm
  static const String actionDelete = 'حذف کریں'; // Delete
  static const String actionShare = 'شیئر کریں'; // Share
  static const String actionClose = 'بند کریں'; // Close
  static const String actionOk = 'ٹھیک ہے'; // OK

  // ─── Loading ──────────────────────────────────────────────────────
  static const String loadingDefault = 'لوڈ ہو رہا ہے…';
  static const String loadingScanning = 'بل اسکین ہو رہا ہے…';
  static const String loadingAnalyzing = 'بل کا تجزیہ ہو رہا ہے…';
  static const String loadingCalculating = 'حساب لگایا جا رہا ہے…';
  static const String loadingSaving = 'محفوظ ہو رہا ہے…';
  static const String loadingConnecting = 'جڑ رہا ہے…';
}
