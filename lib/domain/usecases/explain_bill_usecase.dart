import 'package:dartz/dartz.dart';
import '../entities/bill.dart';
import '../entities/bill_charge.dart';
import '../entities/bill_explanation.dart';
import '../repositories/bill_repository.dart';
import '../../core/errors/failures.dart';
import '../../core/usecases/usecase.dart';
import '../../core/constants/app_strings.dart';
import '../../core/constants/wapda_tariffs.dart';
import '../../core/utils/tariff_calculator.dart';

class ExplainBillParams {
  final String billId;
  const ExplainBillParams({required this.billId});
}

/// Builds a full [BillExplanation] from a saved [Bill].
///
/// Business rules live here — NOT in BLoC.
/// - Determines charge status (normal/high/overcharged)
/// - Generates Urdu complaint text if needed
/// - Resolves helpline number for DISCO
class ExplainBillUseCase implements UseCase<BillExplanation, ExplainBillParams> {
  final BillRepository repository;
  ExplainBillUseCase(this.repository);

  @override
  Future<Either<Failure, BillExplanation>> call(ExplainBillParams params) async {
    final billResult = await repository.getBillById(params.billId);
    return billResult.fold(
      (failure) => Left(failure),
      (bill) => Right(_buildExplanation(bill)),
    );
  }

  BillExplanation _buildExplanation(Bill bill) {
    final charges = _buildCharges(bill);
    final helpline = WapdaTariffs.discoHelplines[bill.discoName] ?? '118';

    String? complaintText;
    if (bill.isOvercharged) {
      complaintText = AppStrings.complaintTemplate
          .replaceAll('{consumer_no}', bill.consumerNumber)
          .replaceAll(
              '{month}',
              '${bill.billMonth.month}/${bill.billMonth.year}')
          .replaceAll('{charged}', bill.totalAmount.toStringAsFixed(0))
          .replaceAll('{expected}', bill.expectedAmount.toStringAsFixed(0));
    }

    return BillExplanation(
      bill: bill,
      charges: charges,
      overallStatusUrdu: bill.isOvercharged
          ? AppStrings.explainOvercharged
          : AppStrings.explainAllGood,
      complaintText: complaintText,
      helplineNumber: helpline,
    );
  }

  List<BillCharge> _buildCharges(Bill bill) {
    // Re-calculate expected values for each charge
    final tariff = TariffCalculator.calculate(
      units: bill.unitsConsumed,
      discoName: bill.discoName,
    );

    return [
      // Energy Charges
      _charge(
        id: 'cost_of_electricity',
        nameKey: 'label_cost_elec',
        explainKey: 'explain_cost_elec',
        actual: _findCharge(bill, 'cost_of_electricity'),
        expected: tariff.energyCharges,
      ),
      // Fixed Charges
      _charge(
        id: 'meter_rent_fix_charges',
        nameKey: 'label_meter_rent',
        explainKey: 'explain_meter_rent',
        actual: _findCharge(bill, 'meter_rent_fix_charges'),
        expected: tariff.fixedCharges,
      ),
      // FC Adjustment
      _charge(
        id: 'fuel_price_adjustment',
        nameKey: 'label_fpa',
        explainKey: 'explain_fpa',
        actual: _findCharge(bill, 'fuel_price_adjustment'),
        expected: null, // Variable — can't validate exactly
      ),
      // QTA
      _charge(
        id: 'qtr_tariff_adj',
        nameKey: 'label_qta',
        explainKey: 'explain_qta',
        actual: _findCharge(bill, 'qtr_tariff_adj'),
        expected: null,
      ),
      // Electricity Duty
      _charge(
        id: 'ed',
        nameKey: 'label_ed',
        explainKey: 'explain_ed',
        actual: _findCharge(bill, 'ed'),
        expected: tariff.electricityDuty,
      ),
      // GST
      _charge(
        id: 'gst',
        nameKey: 'label_gst',
        explainKey: 'explain_gst',
        actual: _findCharge(bill, 'gst'),
        expected: tariff.gst,
      ),
      // TV Fee
      _charge(
        id: 'tv',
        nameKey: 'label_tv',
        explainKey: 'explain_tv',
        actual: _findCharge(bill, 'tv'),
        expected: WapdaTariffs.tvFee,
      ),
    ].where((c) => c.amount > 0).toList();
  }

  BillCharge _charge({
    required String id,
    required String nameKey,
    required String explainKey,
    required double actual,
    required double? expected,
  }) {
    final ChargeStatus status;
    if (expected == null || actual == 0) {
      status = ChargeStatus.normal;
    } else {
      final ratio = actual / expected;
      if (ratio <= 1.05) {
        status = ChargeStatus.normal;
      } else if (ratio <= 1.20) {
        status = ChargeStatus.high;
      } else {
        status = ChargeStatus.overcharged;
      }
    }

    return BillCharge(
      id: id,
      nameKey: nameKey,
      explanationKey: explainKey,
      amount: actual,
      expectedAmount: expected,
      status: status,
    );
  }

  double _findCharge(Bill bill, String chargeId) {
    try {
      return bill.charges.firstWhere((c) => c.id == chargeId).amount;
    } catch (_) {
      return 0.0;
    }
  }
}
