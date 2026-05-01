// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bill_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetBillModelCollection on Isar {
  IsarCollection<BillModel> get billModels => this.collection();
}

const BillModelSchema = CollectionSchema(
  name: r'BillModel',
  id: 7819431562807030620,
  properties: {
    r'area': PropertySchema(
      id: 0,
      name: r'area',
      type: IsarType.string,
    ),
    r'arrears': PropertySchema(
      id: 1,
      name: r'arrears',
      type: IsarType.double,
    ),
    r'billAdjustment': PropertySchema(
      id: 2,
      name: r'billAdjustment',
      type: IsarType.double,
    ),
    r'billMonth': PropertySchema(
      id: 3,
      name: r'billMonth',
      type: IsarType.dateTime,
    ),
    r'block': PropertySchema(
      id: 4,
      name: r'block',
      type: IsarType.string,
    ),
    r'calculation': PropertySchema(
      id: 5,
      name: r'calculation',
      type: IsarType.string,
    ),
    r'centerName': PropertySchema(
      id: 6,
      name: r'centerName',
      type: IsarType.string,
    ),
    r'complaintsDial': PropertySchema(
      id: 7,
      name: r'complaintsDial',
      type: IsarType.string,
    ),
    r'connectedLoad': PropertySchema(
      id: 8,
      name: r'connectedLoad',
      type: IsarType.string,
    ),
    r'connectionDate': PropertySchema(
      id: 9,
      name: r'connectionDate',
      type: IsarType.string,
    ),
    r'consumerNumber': PropertySchema(
      id: 10,
      name: r'consumerNumber',
      type: IsarType.string,
    ),
    r'costOfElectricity': PropertySchema(
      id: 11,
      name: r'costOfElectricity',
      type: IsarType.double,
    ),
    r'currentBill': PropertySchema(
      id: 12,
      name: r'currentBill',
      type: IsarType.double,
    ),
    r'discoName': PropertySchema(
      id: 13,
      name: r'discoName',
      type: IsarType.string,
    ),
    r'division': PropertySchema(
      id: 14,
      name: r'division',
      type: IsarType.string,
    ),
    r'dueDate': PropertySchema(
      id: 15,
      name: r'dueDate',
      type: IsarType.dateTime,
    ),
    r'edOnFpa': PropertySchema(
      id: 16,
      name: r'edOnFpa',
      type: IsarType.double,
    ),
    r'edo': PropertySchema(
      id: 17,
      name: r'edo',
      type: IsarType.string,
    ),
    r'electricityDuty': PropertySchema(
      id: 18,
      name: r'electricityDuty',
      type: IsarType.double,
    ),
    r'etOnFpa': PropertySchema(
      id: 19,
      name: r'etOnFpa',
      type: IsarType.double,
    ),
    r'expectedAmount': PropertySchema(
      id: 20,
      name: r'expectedAmount',
      type: IsarType.double,
    ),
    r'extraTax': PropertySchema(
      id: 21,
      name: r'extraTax',
      type: IsarType.double,
    ),
    r'fcSurcharge': PropertySchema(
      id: 22,
      name: r'fcSurcharge',
      type: IsarType.double,
    ),
    r'feederName': PropertySchema(
      id: 23,
      name: r'feederName',
      type: IsarType.string,
    ),
    r'fuelPriceAdjustment': PropertySchema(
      id: 24,
      name: r'fuelPriceAdjustment',
      type: IsarType.double,
    ),
    r'furtherTax': PropertySchema(
      id: 25,
      name: r'furtherTax',
      type: IsarType.double,
    ),
    r'furtherTaxOnFpa': PropertySchema(
      id: 26,
      name: r'furtherTaxOnFpa',
      type: IsarType.double,
    ),
    r'gopTariff': PropertySchema(
      id: 27,
      name: r'gopTariff',
      type: IsarType.double,
    ),
    r'gst': PropertySchema(
      id: 28,
      name: r'gst',
      type: IsarType.double,
    ),
    r'gstOnFpa': PropertySchema(
      id: 29,
      name: r'gstOnFpa',
      type: IsarType.double,
    ),
    r'iescoGstNo': PropertySchema(
      id: 30,
      name: r'iescoGstNo',
      type: IsarType.string,
    ),
    r'imagePath': PropertySchema(
      id: 31,
      name: r'imagePath',
      type: IsarType.string,
    ),
    r'incomeTax': PropertySchema(
      id: 32,
      name: r'incomeTax',
      type: IsarType.double,
    ),
    r'installment': PropertySchema(
      id: 33,
      name: r'installment',
      type: IsarType.double,
    ),
    r'isOvercharged': PropertySchema(
      id: 34,
      name: r'isOvercharged',
      type: IsarType.bool,
    ),
    r'issueDate': PropertySchema(
      id: 35,
      name: r'issueDate',
      type: IsarType.string,
    ),
    r'itOnFpa': PropertySchema(
      id: 36,
      name: r'itOnFpa',
      type: IsarType.double,
    ),
    r'load': PropertySchema(
      id: 37,
      name: r'load',
      type: IsarType.double,
    ),
    r'lockAge': PropertySchema(
      id: 38,
      name: r'lockAge',
      type: IsarType.string,
    ),
    r'lpSurcharge': PropertySchema(
      id: 39,
      name: r'lpSurcharge',
      type: IsarType.double,
    ),
    r'meterNo': PropertySchema(
      id: 40,
      name: r'meterNo',
      type: IsarType.string,
    ),
    r'meterRentFixCharges': PropertySchema(
      id: 41,
      name: r'meterRentFixCharges',
      type: IsarType.double,
    ),
    r'mf': PropertySchema(
      id: 42,
      name: r'mf',
      type: IsarType.long,
    ),
    r'name': PropertySchema(
      id: 43,
      name: r'name',
      type: IsarType.string,
    ),
    r'noOfAct': PropertySchema(
      id: 44,
      name: r'noOfAct',
      type: IsarType.string,
    ),
    r'ocrConfidence': PropertySchema(
      id: 45,
      name: r'ocrConfidence',
      type: IsarType.double,
    ),
    r'oldAccountNumber': PropertySchema(
      id: 46,
      name: r'oldAccountNumber',
      type: IsarType.string,
    ),
    r'orCall': PropertySchema(
      id: 47,
      name: r'orCall',
      type: IsarType.string,
    ),
    r'overchargeAmount': PropertySchema(
      id: 48,
      name: r'overchargeAmount',
      type: IsarType.double,
    ),
    r'payableAfterDueDate': PropertySchema(
      id: 49,
      name: r'payableAfterDueDate',
      type: IsarType.string,
    ),
    r'paymentHistory': PropertySchema(
      id: 50,
      name: r'paymentHistory',
      type: IsarType.objectList,
      target: r'PaymentHistoryModel',
    ),
    r'plotNo': PropertySchema(
      id: 51,
      name: r'plotNo',
      type: IsarType.string,
    ),
    r'presentReading': PropertySchema(
      id: 52,
      name: r'presentReading',
      type: IsarType.long,
    ),
    r'previousReading': PropertySchema(
      id: 53,
      name: r'previousReading',
      type: IsarType.long,
    ),
    r'qtrTariffAdj': PropertySchema(
      id: 54,
      name: r'qtrTariffAdj',
      type: IsarType.double,
    ),
    r'readingDate': PropertySchema(
      id: 55,
      name: r'readingDate',
      type: IsarType.string,
    ),
    r'referenceNumber': PropertySchema(
      id: 56,
      name: r'referenceNumber',
      type: IsarType.string,
    ),
    r'retailerStax': PropertySchema(
      id: 57,
      name: r'retailerStax',
      type: IsarType.double,
    ),
    r'sTaxOnFpa': PropertySchema(
      id: 58,
      name: r'sTaxOnFpa',
      type: IsarType.double,
    ),
    r'scannedAt': PropertySchema(
      id: 59,
      name: r'scannedAt',
      type: IsarType.dateTime,
    ),
    r'serviceRent': PropertySchema(
      id: 60,
      name: r'serviceRent',
      type: IsarType.double,
    ),
    r'sms': PropertySchema(
      id: 61,
      name: r'sms',
      type: IsarType.string,
    ),
    r'sonOf': PropertySchema(
      id: 62,
      name: r'sonOf',
      type: IsarType.string,
    ),
    r'stNo': PropertySchema(
      id: 63,
      name: r'stNo',
      type: IsarType.string,
    ),
    r'status': PropertySchema(
      id: 64,
      name: r'status',
      type: IsarType.string,
    ),
    r'subDivision': PropertySchema(
      id: 65,
      name: r'subDivision',
      type: IsarType.string,
    ),
    r'subsidies': PropertySchema(
      id: 66,
      name: r'subsidies',
      type: IsarType.double,
    ),
    r'supabaseId': PropertySchema(
      id: 67,
      name: r'supabaseId',
      type: IsarType.string,
    ),
    r'tariff': PropertySchema(
      id: 68,
      name: r'tariff',
      type: IsarType.string,
    ),
    r'textReferenceTo': PropertySchema(
      id: 69,
      name: r'textReferenceTo',
      type: IsarType.string,
    ),
    r'totalAmount': PropertySchema(
      id: 70,
      name: r'totalAmount',
      type: IsarType.double,
    ),
    r'totalFpa': PropertySchema(
      id: 71,
      name: r'totalFpa',
      type: IsarType.double,
    ),
    r'totalTaxesOnFpa': PropertySchema(
      id: 72,
      name: r'totalTaxesOnFpa',
      type: IsarType.double,
    ),
    r'tvFee': PropertySchema(
      id: 73,
      name: r'tvFee',
      type: IsarType.double,
    ),
    r'unBillAge': PropertySchema(
      id: 74,
      name: r'unBillAge',
      type: IsarType.string,
    ),
    r'unitsConsumed': PropertySchema(
      id: 75,
      name: r'unitsConsumed',
      type: IsarType.long,
    )
  },
  estimateSize: _billModelEstimateSize,
  serialize: _billModelSerialize,
  deserialize: _billModelDeserialize,
  deserializeProp: _billModelDeserializeProp,
  idName: r'id',
  indexes: {
    r'discoName': IndexSchema(
      id: -1498229875508568783,
      name: r'discoName',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'discoName',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    ),
    r'billMonth': IndexSchema(
      id: -4212418465044758836,
      name: r'billMonth',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'billMonth',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'consumerNumber': IndexSchema(
      id: -4003466422982138682,
      name: r'consumerNumber',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'consumerNumber',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {r'PaymentHistoryModel': PaymentHistoryModelSchema},
  getId: _billModelGetId,
  getLinks: _billModelGetLinks,
  attach: _billModelAttach,
  version: '3.1.0+1',
);

int _billModelEstimateSize(
  BillModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.area;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.block;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.calculation;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.centerName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.complaintsDial;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.connectedLoad;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.connectionDate;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.consumerNumber.length * 3;
  bytesCount += 3 + object.discoName.length * 3;
  {
    final value = object.division;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.edo;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.feederName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.iescoGstNo;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.imagePath;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.issueDate;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.lockAge;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.meterNo;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.noOfAct;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.oldAccountNumber;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.orCall;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.payableAfterDueDate;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.paymentHistory.length * 3;
  {
    final offsets = allOffsets[PaymentHistoryModel]!;
    for (var i = 0; i < object.paymentHistory.length; i++) {
      final value = object.paymentHistory[i];
      bytesCount +=
          PaymentHistoryModelSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  {
    final value = object.plotNo;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.readingDate;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.referenceNumber;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.sms;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.sonOf;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.stNo;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.status;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.subDivision;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.supabaseId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.tariff;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.textReferenceTo;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.unBillAge;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _billModelSerialize(
  BillModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.area);
  writer.writeDouble(offsets[1], object.arrears);
  writer.writeDouble(offsets[2], object.billAdjustment);
  writer.writeDateTime(offsets[3], object.billMonth);
  writer.writeString(offsets[4], object.block);
  writer.writeString(offsets[5], object.calculation);
  writer.writeString(offsets[6], object.centerName);
  writer.writeString(offsets[7], object.complaintsDial);
  writer.writeString(offsets[8], object.connectedLoad);
  writer.writeString(offsets[9], object.connectionDate);
  writer.writeString(offsets[10], object.consumerNumber);
  writer.writeDouble(offsets[11], object.costOfElectricity);
  writer.writeDouble(offsets[12], object.currentBill);
  writer.writeString(offsets[13], object.discoName);
  writer.writeString(offsets[14], object.division);
  writer.writeDateTime(offsets[15], object.dueDate);
  writer.writeDouble(offsets[16], object.edOnFpa);
  writer.writeString(offsets[17], object.edo);
  writer.writeDouble(offsets[18], object.electricityDuty);
  writer.writeDouble(offsets[19], object.etOnFpa);
  writer.writeDouble(offsets[20], object.expectedAmount);
  writer.writeDouble(offsets[21], object.extraTax);
  writer.writeDouble(offsets[22], object.fcSurcharge);
  writer.writeString(offsets[23], object.feederName);
  writer.writeDouble(offsets[24], object.fuelPriceAdjustment);
  writer.writeDouble(offsets[25], object.furtherTax);
  writer.writeDouble(offsets[26], object.furtherTaxOnFpa);
  writer.writeDouble(offsets[27], object.gopTariff);
  writer.writeDouble(offsets[28], object.gst);
  writer.writeDouble(offsets[29], object.gstOnFpa);
  writer.writeString(offsets[30], object.iescoGstNo);
  writer.writeString(offsets[31], object.imagePath);
  writer.writeDouble(offsets[32], object.incomeTax);
  writer.writeDouble(offsets[33], object.installment);
  writer.writeBool(offsets[34], object.isOvercharged);
  writer.writeString(offsets[35], object.issueDate);
  writer.writeDouble(offsets[36], object.itOnFpa);
  writer.writeDouble(offsets[37], object.load);
  writer.writeString(offsets[38], object.lockAge);
  writer.writeDouble(offsets[39], object.lpSurcharge);
  writer.writeString(offsets[40], object.meterNo);
  writer.writeDouble(offsets[41], object.meterRentFixCharges);
  writer.writeLong(offsets[42], object.mf);
  writer.writeString(offsets[43], object.name);
  writer.writeString(offsets[44], object.noOfAct);
  writer.writeDouble(offsets[45], object.ocrConfidence);
  writer.writeString(offsets[46], object.oldAccountNumber);
  writer.writeString(offsets[47], object.orCall);
  writer.writeDouble(offsets[48], object.overchargeAmount);
  writer.writeString(offsets[49], object.payableAfterDueDate);
  writer.writeObjectList<PaymentHistoryModel>(
    offsets[50],
    allOffsets,
    PaymentHistoryModelSchema.serialize,
    object.paymentHistory,
  );
  writer.writeString(offsets[51], object.plotNo);
  writer.writeLong(offsets[52], object.presentReading);
  writer.writeLong(offsets[53], object.previousReading);
  writer.writeDouble(offsets[54], object.qtrTariffAdj);
  writer.writeString(offsets[55], object.readingDate);
  writer.writeString(offsets[56], object.referenceNumber);
  writer.writeDouble(offsets[57], object.retailerStax);
  writer.writeDouble(offsets[58], object.sTaxOnFpa);
  writer.writeDateTime(offsets[59], object.scannedAt);
  writer.writeDouble(offsets[60], object.serviceRent);
  writer.writeString(offsets[61], object.sms);
  writer.writeString(offsets[62], object.sonOf);
  writer.writeString(offsets[63], object.stNo);
  writer.writeString(offsets[64], object.status);
  writer.writeString(offsets[65], object.subDivision);
  writer.writeDouble(offsets[66], object.subsidies);
  writer.writeString(offsets[67], object.supabaseId);
  writer.writeString(offsets[68], object.tariff);
  writer.writeString(offsets[69], object.textReferenceTo);
  writer.writeDouble(offsets[70], object.totalAmount);
  writer.writeDouble(offsets[71], object.totalFpa);
  writer.writeDouble(offsets[72], object.totalTaxesOnFpa);
  writer.writeDouble(offsets[73], object.tvFee);
  writer.writeString(offsets[74], object.unBillAge);
  writer.writeLong(offsets[75], object.unitsConsumed);
}

BillModel _billModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = BillModel();
  object.area = reader.readStringOrNull(offsets[0]);
  object.arrears = reader.readDoubleOrNull(offsets[1]);
  object.billAdjustment = reader.readDoubleOrNull(offsets[2]);
  object.billMonth = reader.readDateTime(offsets[3]);
  object.block = reader.readStringOrNull(offsets[4]);
  object.calculation = reader.readStringOrNull(offsets[5]);
  object.centerName = reader.readStringOrNull(offsets[6]);
  object.complaintsDial = reader.readStringOrNull(offsets[7]);
  object.connectedLoad = reader.readStringOrNull(offsets[8]);
  object.connectionDate = reader.readStringOrNull(offsets[9]);
  object.consumerNumber = reader.readString(offsets[10]);
  object.costOfElectricity = reader.readDoubleOrNull(offsets[11]);
  object.currentBill = reader.readDoubleOrNull(offsets[12]);
  object.discoName = reader.readString(offsets[13]);
  object.division = reader.readStringOrNull(offsets[14]);
  object.dueDate = reader.readDateTime(offsets[15]);
  object.edOnFpa = reader.readDoubleOrNull(offsets[16]);
  object.edo = reader.readStringOrNull(offsets[17]);
  object.electricityDuty = reader.readDoubleOrNull(offsets[18]);
  object.etOnFpa = reader.readDoubleOrNull(offsets[19]);
  object.expectedAmount = reader.readDouble(offsets[20]);
  object.extraTax = reader.readDoubleOrNull(offsets[21]);
  object.fcSurcharge = reader.readDoubleOrNull(offsets[22]);
  object.feederName = reader.readStringOrNull(offsets[23]);
  object.fuelPriceAdjustment = reader.readDoubleOrNull(offsets[24]);
  object.furtherTax = reader.readDoubleOrNull(offsets[25]);
  object.furtherTaxOnFpa = reader.readDoubleOrNull(offsets[26]);
  object.gopTariff = reader.readDoubleOrNull(offsets[27]);
  object.gst = reader.readDoubleOrNull(offsets[28]);
  object.gstOnFpa = reader.readDoubleOrNull(offsets[29]);
  object.id = id;
  object.iescoGstNo = reader.readStringOrNull(offsets[30]);
  object.imagePath = reader.readStringOrNull(offsets[31]);
  object.incomeTax = reader.readDoubleOrNull(offsets[32]);
  object.installment = reader.readDoubleOrNull(offsets[33]);
  object.isOvercharged = reader.readBool(offsets[34]);
  object.issueDate = reader.readStringOrNull(offsets[35]);
  object.itOnFpa = reader.readDoubleOrNull(offsets[36]);
  object.load = reader.readDoubleOrNull(offsets[37]);
  object.lockAge = reader.readStringOrNull(offsets[38]);
  object.lpSurcharge = reader.readDoubleOrNull(offsets[39]);
  object.meterNo = reader.readStringOrNull(offsets[40]);
  object.meterRentFixCharges = reader.readDoubleOrNull(offsets[41]);
  object.mf = reader.readLongOrNull(offsets[42]);
  object.name = reader.readStringOrNull(offsets[43]);
  object.noOfAct = reader.readStringOrNull(offsets[44]);
  object.ocrConfidence = reader.readDouble(offsets[45]);
  object.oldAccountNumber = reader.readStringOrNull(offsets[46]);
  object.orCall = reader.readStringOrNull(offsets[47]);
  object.overchargeAmount = reader.readDouble(offsets[48]);
  object.payableAfterDueDate = reader.readStringOrNull(offsets[49]);
  object.paymentHistory = reader.readObjectList<PaymentHistoryModel>(
        offsets[50],
        PaymentHistoryModelSchema.deserialize,
        allOffsets,
        PaymentHistoryModel(),
      ) ??
      [];
  object.plotNo = reader.readStringOrNull(offsets[51]);
  object.presentReading = reader.readLongOrNull(offsets[52]);
  object.previousReading = reader.readLongOrNull(offsets[53]);
  object.qtrTariffAdj = reader.readDoubleOrNull(offsets[54]);
  object.readingDate = reader.readStringOrNull(offsets[55]);
  object.referenceNumber = reader.readStringOrNull(offsets[56]);
  object.retailerStax = reader.readDoubleOrNull(offsets[57]);
  object.sTaxOnFpa = reader.readDoubleOrNull(offsets[58]);
  object.scannedAt = reader.readDateTime(offsets[59]);
  object.serviceRent = reader.readDoubleOrNull(offsets[60]);
  object.sms = reader.readStringOrNull(offsets[61]);
  object.sonOf = reader.readStringOrNull(offsets[62]);
  object.stNo = reader.readStringOrNull(offsets[63]);
  object.status = reader.readStringOrNull(offsets[64]);
  object.subDivision = reader.readStringOrNull(offsets[65]);
  object.subsidies = reader.readDoubleOrNull(offsets[66]);
  object.supabaseId = reader.readStringOrNull(offsets[67]);
  object.tariff = reader.readStringOrNull(offsets[68]);
  object.textReferenceTo = reader.readStringOrNull(offsets[69]);
  object.totalAmount = reader.readDouble(offsets[70]);
  object.totalFpa = reader.readDoubleOrNull(offsets[71]);
  object.totalTaxesOnFpa = reader.readDoubleOrNull(offsets[72]);
  object.tvFee = reader.readDoubleOrNull(offsets[73]);
  object.unBillAge = reader.readStringOrNull(offsets[74]);
  object.unitsConsumed = reader.readLong(offsets[75]);
  return object;
}

P _billModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readDoubleOrNull(offset)) as P;
    case 2:
      return (reader.readDoubleOrNull(offset)) as P;
    case 3:
      return (reader.readDateTime(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readString(offset)) as P;
    case 11:
      return (reader.readDoubleOrNull(offset)) as P;
    case 12:
      return (reader.readDoubleOrNull(offset)) as P;
    case 13:
      return (reader.readString(offset)) as P;
    case 14:
      return (reader.readStringOrNull(offset)) as P;
    case 15:
      return (reader.readDateTime(offset)) as P;
    case 16:
      return (reader.readDoubleOrNull(offset)) as P;
    case 17:
      return (reader.readStringOrNull(offset)) as P;
    case 18:
      return (reader.readDoubleOrNull(offset)) as P;
    case 19:
      return (reader.readDoubleOrNull(offset)) as P;
    case 20:
      return (reader.readDouble(offset)) as P;
    case 21:
      return (reader.readDoubleOrNull(offset)) as P;
    case 22:
      return (reader.readDoubleOrNull(offset)) as P;
    case 23:
      return (reader.readStringOrNull(offset)) as P;
    case 24:
      return (reader.readDoubleOrNull(offset)) as P;
    case 25:
      return (reader.readDoubleOrNull(offset)) as P;
    case 26:
      return (reader.readDoubleOrNull(offset)) as P;
    case 27:
      return (reader.readDoubleOrNull(offset)) as P;
    case 28:
      return (reader.readDoubleOrNull(offset)) as P;
    case 29:
      return (reader.readDoubleOrNull(offset)) as P;
    case 30:
      return (reader.readStringOrNull(offset)) as P;
    case 31:
      return (reader.readStringOrNull(offset)) as P;
    case 32:
      return (reader.readDoubleOrNull(offset)) as P;
    case 33:
      return (reader.readDoubleOrNull(offset)) as P;
    case 34:
      return (reader.readBool(offset)) as P;
    case 35:
      return (reader.readStringOrNull(offset)) as P;
    case 36:
      return (reader.readDoubleOrNull(offset)) as P;
    case 37:
      return (reader.readDoubleOrNull(offset)) as P;
    case 38:
      return (reader.readStringOrNull(offset)) as P;
    case 39:
      return (reader.readDoubleOrNull(offset)) as P;
    case 40:
      return (reader.readStringOrNull(offset)) as P;
    case 41:
      return (reader.readDoubleOrNull(offset)) as P;
    case 42:
      return (reader.readLongOrNull(offset)) as P;
    case 43:
      return (reader.readStringOrNull(offset)) as P;
    case 44:
      return (reader.readStringOrNull(offset)) as P;
    case 45:
      return (reader.readDouble(offset)) as P;
    case 46:
      return (reader.readStringOrNull(offset)) as P;
    case 47:
      return (reader.readStringOrNull(offset)) as P;
    case 48:
      return (reader.readDouble(offset)) as P;
    case 49:
      return (reader.readStringOrNull(offset)) as P;
    case 50:
      return (reader.readObjectList<PaymentHistoryModel>(
            offset,
            PaymentHistoryModelSchema.deserialize,
            allOffsets,
            PaymentHistoryModel(),
          ) ??
          []) as P;
    case 51:
      return (reader.readStringOrNull(offset)) as P;
    case 52:
      return (reader.readLongOrNull(offset)) as P;
    case 53:
      return (reader.readLongOrNull(offset)) as P;
    case 54:
      return (reader.readDoubleOrNull(offset)) as P;
    case 55:
      return (reader.readStringOrNull(offset)) as P;
    case 56:
      return (reader.readStringOrNull(offset)) as P;
    case 57:
      return (reader.readDoubleOrNull(offset)) as P;
    case 58:
      return (reader.readDoubleOrNull(offset)) as P;
    case 59:
      return (reader.readDateTime(offset)) as P;
    case 60:
      return (reader.readDoubleOrNull(offset)) as P;
    case 61:
      return (reader.readStringOrNull(offset)) as P;
    case 62:
      return (reader.readStringOrNull(offset)) as P;
    case 63:
      return (reader.readStringOrNull(offset)) as P;
    case 64:
      return (reader.readStringOrNull(offset)) as P;
    case 65:
      return (reader.readStringOrNull(offset)) as P;
    case 66:
      return (reader.readDoubleOrNull(offset)) as P;
    case 67:
      return (reader.readStringOrNull(offset)) as P;
    case 68:
      return (reader.readStringOrNull(offset)) as P;
    case 69:
      return (reader.readStringOrNull(offset)) as P;
    case 70:
      return (reader.readDouble(offset)) as P;
    case 71:
      return (reader.readDoubleOrNull(offset)) as P;
    case 72:
      return (reader.readDoubleOrNull(offset)) as P;
    case 73:
      return (reader.readDoubleOrNull(offset)) as P;
    case 74:
      return (reader.readStringOrNull(offset)) as P;
    case 75:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _billModelGetId(BillModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _billModelGetLinks(BillModel object) {
  return [];
}

void _billModelAttach(IsarCollection<dynamic> col, Id id, BillModel object) {
  object.id = id;
}

extension BillModelQueryWhereSort
    on QueryBuilder<BillModel, BillModel, QWhere> {
  QueryBuilder<BillModel, BillModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterWhere> anyBillMonth() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'billMonth'),
      );
    });
  }
}

extension BillModelQueryWhere
    on QueryBuilder<BillModel, BillModel, QWhereClause> {
  QueryBuilder<BillModel, BillModel, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterWhereClause> discoNameEqualTo(
      String discoName) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'discoName',
        value: [discoName],
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterWhereClause> discoNameNotEqualTo(
      String discoName) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'discoName',
              lower: [],
              upper: [discoName],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'discoName',
              lower: [discoName],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'discoName',
              lower: [discoName],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'discoName',
              lower: [],
              upper: [discoName],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterWhereClause> billMonthEqualTo(
      DateTime billMonth) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'billMonth',
        value: [billMonth],
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterWhereClause> billMonthNotEqualTo(
      DateTime billMonth) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'billMonth',
              lower: [],
              upper: [billMonth],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'billMonth',
              lower: [billMonth],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'billMonth',
              lower: [billMonth],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'billMonth',
              lower: [],
              upper: [billMonth],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterWhereClause> billMonthGreaterThan(
    DateTime billMonth, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'billMonth',
        lower: [billMonth],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterWhereClause> billMonthLessThan(
    DateTime billMonth, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'billMonth',
        lower: [],
        upper: [billMonth],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterWhereClause> billMonthBetween(
    DateTime lowerBillMonth,
    DateTime upperBillMonth, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'billMonth',
        lower: [lowerBillMonth],
        includeLower: includeLower,
        upper: [upperBillMonth],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterWhereClause> consumerNumberEqualTo(
      String consumerNumber) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'consumerNumber',
        value: [consumerNumber],
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterWhereClause>
      consumerNumberNotEqualTo(String consumerNumber) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'consumerNumber',
              lower: [],
              upper: [consumerNumber],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'consumerNumber',
              lower: [consumerNumber],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'consumerNumber',
              lower: [consumerNumber],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'consumerNumber',
              lower: [],
              upper: [consumerNumber],
              includeUpper: false,
            ));
      }
    });
  }
}

extension BillModelQueryFilter
    on QueryBuilder<BillModel, BillModel, QFilterCondition> {
  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> areaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'area',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> areaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'area',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> areaEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'area',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> areaGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'area',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> areaLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'area',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> areaBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'area',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> areaStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'area',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> areaEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'area',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> areaContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'area',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> areaMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'area',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> areaIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'area',
        value: '',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> areaIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'area',
        value: '',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> arrearsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'arrears',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> arrearsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'arrears',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> arrearsEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'arrears',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> arrearsGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'arrears',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> arrearsLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'arrears',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> arrearsBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'arrears',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      billAdjustmentIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'billAdjustment',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      billAdjustmentIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'billAdjustment',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      billAdjustmentEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'billAdjustment',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      billAdjustmentGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'billAdjustment',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      billAdjustmentLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'billAdjustment',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      billAdjustmentBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'billAdjustment',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> billMonthEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'billMonth',
        value: value,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      billMonthGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'billMonth',
        value: value,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> billMonthLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'billMonth',
        value: value,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> billMonthBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'billMonth',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> blockIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'block',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> blockIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'block',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> blockEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'block',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> blockGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'block',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> blockLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'block',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> blockBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'block',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> blockStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'block',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> blockEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'block',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> blockContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'block',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> blockMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'block',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> blockIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'block',
        value: '',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> blockIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'block',
        value: '',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      calculationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'calculation',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      calculationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'calculation',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> calculationEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'calculation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      calculationGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'calculation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> calculationLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'calculation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> calculationBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'calculation',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      calculationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'calculation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> calculationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'calculation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> calculationContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'calculation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> calculationMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'calculation',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      calculationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'calculation',
        value: '',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      calculationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'calculation',
        value: '',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> centerNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'centerName',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      centerNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'centerName',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> centerNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'centerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      centerNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'centerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> centerNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'centerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> centerNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'centerName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      centerNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'centerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> centerNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'centerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> centerNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'centerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> centerNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'centerName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      centerNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'centerName',
        value: '',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      centerNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'centerName',
        value: '',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      complaintsDialIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'complaintsDial',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      complaintsDialIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'complaintsDial',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      complaintsDialEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'complaintsDial',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      complaintsDialGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'complaintsDial',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      complaintsDialLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'complaintsDial',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      complaintsDialBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'complaintsDial',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      complaintsDialStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'complaintsDial',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      complaintsDialEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'complaintsDial',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      complaintsDialContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'complaintsDial',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      complaintsDialMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'complaintsDial',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      complaintsDialIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'complaintsDial',
        value: '',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      complaintsDialIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'complaintsDial',
        value: '',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      connectedLoadIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'connectedLoad',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      connectedLoadIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'connectedLoad',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      connectedLoadEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'connectedLoad',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      connectedLoadGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'connectedLoad',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      connectedLoadLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'connectedLoad',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      connectedLoadBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'connectedLoad',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      connectedLoadStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'connectedLoad',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      connectedLoadEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'connectedLoad',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      connectedLoadContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'connectedLoad',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      connectedLoadMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'connectedLoad',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      connectedLoadIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'connectedLoad',
        value: '',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      connectedLoadIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'connectedLoad',
        value: '',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      connectionDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'connectionDate',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      connectionDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'connectionDate',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      connectionDateEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'connectionDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      connectionDateGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'connectionDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      connectionDateLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'connectionDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      connectionDateBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'connectionDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      connectionDateStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'connectionDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      connectionDateEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'connectionDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      connectionDateContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'connectionDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      connectionDateMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'connectionDate',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      connectionDateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'connectionDate',
        value: '',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      connectionDateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'connectionDate',
        value: '',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      consumerNumberEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'consumerNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      consumerNumberGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'consumerNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      consumerNumberLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'consumerNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      consumerNumberBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'consumerNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      consumerNumberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'consumerNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      consumerNumberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'consumerNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      consumerNumberContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'consumerNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      consumerNumberMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'consumerNumber',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      consumerNumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'consumerNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      consumerNumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'consumerNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      costOfElectricityIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'costOfElectricity',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      costOfElectricityIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'costOfElectricity',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      costOfElectricityEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'costOfElectricity',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      costOfElectricityGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'costOfElectricity',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      costOfElectricityLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'costOfElectricity',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      costOfElectricityBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'costOfElectricity',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      currentBillIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'currentBill',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      currentBillIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'currentBill',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> currentBillEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'currentBill',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      currentBillGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'currentBill',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> currentBillLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'currentBill',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> currentBillBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'currentBill',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> discoNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'discoName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      discoNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'discoName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> discoNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'discoName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> discoNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'discoName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> discoNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'discoName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> discoNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'discoName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> discoNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'discoName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> discoNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'discoName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> discoNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'discoName',
        value: '',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      discoNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'discoName',
        value: '',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> divisionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'division',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      divisionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'division',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> divisionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'division',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> divisionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'division',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> divisionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'division',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> divisionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'division',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> divisionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'division',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> divisionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'division',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> divisionContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'division',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> divisionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'division',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> divisionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'division',
        value: '',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      divisionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'division',
        value: '',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> dueDateEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dueDate',
        value: value,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> dueDateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dueDate',
        value: value,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> dueDateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dueDate',
        value: value,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> dueDateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dueDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> edOnFpaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'edOnFpa',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> edOnFpaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'edOnFpa',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> edOnFpaEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'edOnFpa',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> edOnFpaGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'edOnFpa',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> edOnFpaLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'edOnFpa',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> edOnFpaBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'edOnFpa',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> edoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'edo',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> edoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'edo',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> edoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'edo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> edoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'edo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> edoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'edo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> edoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'edo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> edoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'edo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> edoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'edo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> edoContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'edo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> edoMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'edo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> edoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'edo',
        value: '',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> edoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'edo',
        value: '',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      electricityDutyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'electricityDuty',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      electricityDutyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'electricityDuty',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      electricityDutyEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'electricityDuty',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      electricityDutyGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'electricityDuty',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      electricityDutyLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'electricityDuty',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      electricityDutyBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'electricityDuty',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> etOnFpaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'etOnFpa',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> etOnFpaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'etOnFpa',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> etOnFpaEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'etOnFpa',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> etOnFpaGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'etOnFpa',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> etOnFpaLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'etOnFpa',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> etOnFpaBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'etOnFpa',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      expectedAmountEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'expectedAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      expectedAmountGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'expectedAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      expectedAmountLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'expectedAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      expectedAmountBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'expectedAmount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> extraTaxIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'extraTax',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      extraTaxIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'extraTax',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> extraTaxEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'extraTax',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> extraTaxGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'extraTax',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> extraTaxLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'extraTax',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> extraTaxBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'extraTax',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      fcSurchargeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fcSurcharge',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      fcSurchargeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fcSurcharge',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> fcSurchargeEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fcSurcharge',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      fcSurchargeGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fcSurcharge',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> fcSurchargeLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fcSurcharge',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> fcSurchargeBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fcSurcharge',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> feederNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'feederName',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      feederNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'feederName',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> feederNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'feederName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      feederNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'feederName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> feederNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'feederName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> feederNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'feederName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      feederNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'feederName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> feederNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'feederName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> feederNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'feederName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> feederNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'feederName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      feederNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'feederName',
        value: '',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      feederNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'feederName',
        value: '',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      fuelPriceAdjustmentIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fuelPriceAdjustment',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      fuelPriceAdjustmentIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fuelPriceAdjustment',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      fuelPriceAdjustmentEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fuelPriceAdjustment',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      fuelPriceAdjustmentGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fuelPriceAdjustment',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      fuelPriceAdjustmentLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fuelPriceAdjustment',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      fuelPriceAdjustmentBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fuelPriceAdjustment',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> furtherTaxIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'furtherTax',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      furtherTaxIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'furtherTax',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> furtherTaxEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'furtherTax',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      furtherTaxGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'furtherTax',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> furtherTaxLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'furtherTax',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> furtherTaxBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'furtherTax',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      furtherTaxOnFpaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'furtherTaxOnFpa',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      furtherTaxOnFpaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'furtherTaxOnFpa',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      furtherTaxOnFpaEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'furtherTaxOnFpa',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      furtherTaxOnFpaGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'furtherTaxOnFpa',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      furtherTaxOnFpaLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'furtherTaxOnFpa',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      furtherTaxOnFpaBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'furtherTaxOnFpa',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> gopTariffIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'gopTariff',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      gopTariffIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'gopTariff',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> gopTariffEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'gopTariff',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      gopTariffGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'gopTariff',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> gopTariffLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'gopTariff',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> gopTariffBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'gopTariff',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> gstIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'gst',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> gstIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'gst',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> gstEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'gst',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> gstGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'gst',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> gstLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'gst',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> gstBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'gst',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> gstOnFpaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'gstOnFpa',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      gstOnFpaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'gstOnFpa',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> gstOnFpaEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'gstOnFpa',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> gstOnFpaGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'gstOnFpa',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> gstOnFpaLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'gstOnFpa',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> gstOnFpaBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'gstOnFpa',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> iescoGstNoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'iescoGstNo',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      iescoGstNoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'iescoGstNo',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> iescoGstNoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'iescoGstNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      iescoGstNoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'iescoGstNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> iescoGstNoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'iescoGstNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> iescoGstNoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'iescoGstNo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      iescoGstNoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'iescoGstNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> iescoGstNoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'iescoGstNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> iescoGstNoContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'iescoGstNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> iescoGstNoMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'iescoGstNo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      iescoGstNoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'iescoGstNo',
        value: '',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      iescoGstNoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'iescoGstNo',
        value: '',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> imagePathIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'imagePath',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      imagePathIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'imagePath',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> imagePathEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imagePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      imagePathGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'imagePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> imagePathLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'imagePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> imagePathBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'imagePath',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> imagePathStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'imagePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> imagePathEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'imagePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> imagePathContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'imagePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> imagePathMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'imagePath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> imagePathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imagePath',
        value: '',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      imagePathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'imagePath',
        value: '',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> incomeTaxIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'incomeTax',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      incomeTaxIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'incomeTax',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> incomeTaxEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'incomeTax',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      incomeTaxGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'incomeTax',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> incomeTaxLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'incomeTax',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> incomeTaxBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'incomeTax',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      installmentIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'installment',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      installmentIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'installment',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> installmentEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'installment',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      installmentGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'installment',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> installmentLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'installment',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> installmentBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'installment',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      isOverchargedEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isOvercharged',
        value: value,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> issueDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'issueDate',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      issueDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'issueDate',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> issueDateEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'issueDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      issueDateGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'issueDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> issueDateLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'issueDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> issueDateBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'issueDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> issueDateStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'issueDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> issueDateEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'issueDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> issueDateContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'issueDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> issueDateMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'issueDate',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> issueDateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'issueDate',
        value: '',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      issueDateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'issueDate',
        value: '',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> itOnFpaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'itOnFpa',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> itOnFpaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'itOnFpa',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> itOnFpaEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'itOnFpa',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> itOnFpaGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'itOnFpa',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> itOnFpaLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'itOnFpa',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> itOnFpaBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'itOnFpa',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> loadIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'load',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> loadIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'load',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> loadEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'load',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> loadGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'load',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> loadLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'load',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> loadBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'load',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> lockAgeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lockAge',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> lockAgeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lockAge',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> lockAgeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lockAge',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> lockAgeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lockAge',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> lockAgeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lockAge',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> lockAgeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lockAge',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> lockAgeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'lockAge',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> lockAgeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'lockAge',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> lockAgeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'lockAge',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> lockAgeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'lockAge',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> lockAgeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lockAge',
        value: '',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      lockAgeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'lockAge',
        value: '',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      lpSurchargeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lpSurcharge',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      lpSurchargeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lpSurcharge',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> lpSurchargeEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lpSurcharge',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      lpSurchargeGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lpSurcharge',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> lpSurchargeLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lpSurcharge',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> lpSurchargeBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lpSurcharge',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> meterNoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'meterNo',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> meterNoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'meterNo',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> meterNoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'meterNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> meterNoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'meterNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> meterNoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'meterNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> meterNoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'meterNo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> meterNoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'meterNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> meterNoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'meterNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> meterNoContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'meterNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> meterNoMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'meterNo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> meterNoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'meterNo',
        value: '',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      meterNoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'meterNo',
        value: '',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      meterRentFixChargesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'meterRentFixCharges',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      meterRentFixChargesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'meterRentFixCharges',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      meterRentFixChargesEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'meterRentFixCharges',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      meterRentFixChargesGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'meterRentFixCharges',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      meterRentFixChargesLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'meterRentFixCharges',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      meterRentFixChargesBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'meterRentFixCharges',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> mfIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'mf',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> mfIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'mf',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> mfEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mf',
        value: value,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> mfGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'mf',
        value: value,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> mfLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'mf',
        value: value,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> mfBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'mf',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> nameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> nameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> nameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> noOfActIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'noOfAct',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> noOfActIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'noOfAct',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> noOfActEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'noOfAct',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> noOfActGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'noOfAct',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> noOfActLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'noOfAct',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> noOfActBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'noOfAct',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> noOfActStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'noOfAct',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> noOfActEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'noOfAct',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> noOfActContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'noOfAct',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> noOfActMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'noOfAct',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> noOfActIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'noOfAct',
        value: '',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      noOfActIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'noOfAct',
        value: '',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      ocrConfidenceEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ocrConfidence',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      ocrConfidenceGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ocrConfidence',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      ocrConfidenceLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ocrConfidence',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      ocrConfidenceBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ocrConfidence',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      oldAccountNumberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'oldAccountNumber',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      oldAccountNumberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'oldAccountNumber',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      oldAccountNumberEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'oldAccountNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      oldAccountNumberGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'oldAccountNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      oldAccountNumberLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'oldAccountNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      oldAccountNumberBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'oldAccountNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      oldAccountNumberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'oldAccountNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      oldAccountNumberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'oldAccountNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      oldAccountNumberContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'oldAccountNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      oldAccountNumberMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'oldAccountNumber',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      oldAccountNumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'oldAccountNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      oldAccountNumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'oldAccountNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> orCallIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'orCall',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> orCallIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'orCall',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> orCallEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'orCall',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> orCallGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'orCall',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> orCallLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'orCall',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> orCallBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'orCall',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> orCallStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'orCall',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> orCallEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'orCall',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> orCallContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'orCall',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> orCallMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'orCall',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> orCallIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'orCall',
        value: '',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> orCallIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'orCall',
        value: '',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      overchargeAmountEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'overchargeAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      overchargeAmountGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'overchargeAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      overchargeAmountLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'overchargeAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      overchargeAmountBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'overchargeAmount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      payableAfterDueDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'payableAfterDueDate',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      payableAfterDueDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'payableAfterDueDate',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      payableAfterDueDateEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'payableAfterDueDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      payableAfterDueDateGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'payableAfterDueDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      payableAfterDueDateLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'payableAfterDueDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      payableAfterDueDateBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'payableAfterDueDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      payableAfterDueDateStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'payableAfterDueDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      payableAfterDueDateEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'payableAfterDueDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      payableAfterDueDateContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'payableAfterDueDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      payableAfterDueDateMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'payableAfterDueDate',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      payableAfterDueDateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'payableAfterDueDate',
        value: '',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      payableAfterDueDateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'payableAfterDueDate',
        value: '',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      paymentHistoryLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'paymentHistory',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      paymentHistoryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'paymentHistory',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      paymentHistoryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'paymentHistory',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      paymentHistoryLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'paymentHistory',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      paymentHistoryLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'paymentHistory',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      paymentHistoryLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'paymentHistory',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> plotNoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'plotNo',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> plotNoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'plotNo',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> plotNoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'plotNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> plotNoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'plotNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> plotNoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'plotNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> plotNoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'plotNo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> plotNoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'plotNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> plotNoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'plotNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> plotNoContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'plotNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> plotNoMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'plotNo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> plotNoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'plotNo',
        value: '',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> plotNoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'plotNo',
        value: '',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      presentReadingIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'presentReading',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      presentReadingIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'presentReading',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      presentReadingEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'presentReading',
        value: value,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      presentReadingGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'presentReading',
        value: value,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      presentReadingLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'presentReading',
        value: value,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      presentReadingBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'presentReading',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      previousReadingIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'previousReading',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      previousReadingIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'previousReading',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      previousReadingEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'previousReading',
        value: value,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      previousReadingGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'previousReading',
        value: value,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      previousReadingLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'previousReading',
        value: value,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      previousReadingBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'previousReading',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      qtrTariffAdjIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'qtrTariffAdj',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      qtrTariffAdjIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'qtrTariffAdj',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> qtrTariffAdjEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'qtrTariffAdj',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      qtrTariffAdjGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'qtrTariffAdj',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      qtrTariffAdjLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'qtrTariffAdj',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> qtrTariffAdjBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'qtrTariffAdj',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      readingDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'readingDate',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      readingDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'readingDate',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> readingDateEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'readingDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      readingDateGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'readingDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> readingDateLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'readingDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> readingDateBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'readingDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      readingDateStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'readingDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> readingDateEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'readingDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> readingDateContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'readingDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> readingDateMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'readingDate',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      readingDateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'readingDate',
        value: '',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      readingDateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'readingDate',
        value: '',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      referenceNumberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'referenceNumber',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      referenceNumberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'referenceNumber',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      referenceNumberEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'referenceNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      referenceNumberGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'referenceNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      referenceNumberLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'referenceNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      referenceNumberBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'referenceNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      referenceNumberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'referenceNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      referenceNumberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'referenceNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      referenceNumberContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'referenceNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      referenceNumberMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'referenceNumber',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      referenceNumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'referenceNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      referenceNumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'referenceNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      retailerStaxIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'retailerStax',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      retailerStaxIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'retailerStax',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> retailerStaxEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'retailerStax',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      retailerStaxGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'retailerStax',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      retailerStaxLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'retailerStax',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> retailerStaxBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'retailerStax',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> sTaxOnFpaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'sTaxOnFpa',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      sTaxOnFpaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'sTaxOnFpa',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> sTaxOnFpaEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sTaxOnFpa',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      sTaxOnFpaGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sTaxOnFpa',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> sTaxOnFpaLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sTaxOnFpa',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> sTaxOnFpaBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sTaxOnFpa',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> scannedAtEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'scannedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      scannedAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'scannedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> scannedAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'scannedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> scannedAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'scannedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      serviceRentIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'serviceRent',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      serviceRentIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'serviceRent',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> serviceRentEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'serviceRent',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      serviceRentGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'serviceRent',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> serviceRentLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'serviceRent',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> serviceRentBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'serviceRent',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> smsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'sms',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> smsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'sms',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> smsEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sms',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> smsGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sms',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> smsLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sms',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> smsBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sms',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> smsStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'sms',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> smsEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'sms',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> smsContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'sms',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> smsMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'sms',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> smsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sms',
        value: '',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> smsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'sms',
        value: '',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> sonOfIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'sonOf',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> sonOfIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'sonOf',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> sonOfEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sonOf',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> sonOfGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sonOf',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> sonOfLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sonOf',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> sonOfBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sonOf',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> sonOfStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'sonOf',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> sonOfEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'sonOf',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> sonOfContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'sonOf',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> sonOfMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'sonOf',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> sonOfIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sonOf',
        value: '',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> sonOfIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'sonOf',
        value: '',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> stNoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'stNo',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> stNoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'stNo',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> stNoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> stNoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'stNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> stNoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'stNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> stNoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'stNo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> stNoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'stNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> stNoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'stNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> stNoContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'stNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> stNoMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'stNo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> stNoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stNo',
        value: '',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> stNoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'stNo',
        value: '',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> statusIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'status',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> statusIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'status',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> statusEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> statusGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> statusLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> statusBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'status',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> statusStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> statusEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> statusContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> statusMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'status',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> statusIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> statusIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      subDivisionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'subDivision',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      subDivisionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'subDivision',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> subDivisionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'subDivision',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      subDivisionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'subDivision',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> subDivisionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'subDivision',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> subDivisionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'subDivision',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      subDivisionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'subDivision',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> subDivisionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'subDivision',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> subDivisionContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'subDivision',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> subDivisionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'subDivision',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      subDivisionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'subDivision',
        value: '',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      subDivisionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'subDivision',
        value: '',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> subsidiesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'subsidies',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      subsidiesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'subsidies',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> subsidiesEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'subsidies',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      subsidiesGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'subsidies',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> subsidiesLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'subsidies',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> subsidiesBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'subsidies',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> supabaseIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'supabaseId',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      supabaseIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'supabaseId',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> supabaseIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'supabaseId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      supabaseIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'supabaseId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> supabaseIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'supabaseId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> supabaseIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'supabaseId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      supabaseIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'supabaseId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> supabaseIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'supabaseId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> supabaseIdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'supabaseId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> supabaseIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'supabaseId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      supabaseIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'supabaseId',
        value: '',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      supabaseIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'supabaseId',
        value: '',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> tariffIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'tariff',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> tariffIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'tariff',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> tariffEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tariff',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> tariffGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tariff',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> tariffLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tariff',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> tariffBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tariff',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> tariffStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'tariff',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> tariffEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'tariff',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> tariffContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tariff',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> tariffMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'tariff',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> tariffIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tariff',
        value: '',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> tariffIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tariff',
        value: '',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      textReferenceToIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'textReferenceTo',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      textReferenceToIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'textReferenceTo',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      textReferenceToEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'textReferenceTo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      textReferenceToGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'textReferenceTo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      textReferenceToLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'textReferenceTo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      textReferenceToBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'textReferenceTo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      textReferenceToStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'textReferenceTo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      textReferenceToEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'textReferenceTo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      textReferenceToContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'textReferenceTo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      textReferenceToMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'textReferenceTo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      textReferenceToIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'textReferenceTo',
        value: '',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      textReferenceToIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'textReferenceTo',
        value: '',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> totalAmountEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      totalAmountGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> totalAmountLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> totalAmountBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalAmount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> totalFpaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'totalFpa',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      totalFpaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'totalFpa',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> totalFpaEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalFpa',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> totalFpaGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalFpa',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> totalFpaLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalFpa',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> totalFpaBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalFpa',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      totalTaxesOnFpaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'totalTaxesOnFpa',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      totalTaxesOnFpaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'totalTaxesOnFpa',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      totalTaxesOnFpaEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalTaxesOnFpa',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      totalTaxesOnFpaGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalTaxesOnFpa',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      totalTaxesOnFpaLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalTaxesOnFpa',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      totalTaxesOnFpaBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalTaxesOnFpa',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> tvFeeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'tvFee',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> tvFeeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'tvFee',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> tvFeeEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tvFee',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> tvFeeGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tvFee',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> tvFeeLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tvFee',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> tvFeeBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tvFee',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> unBillAgeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'unBillAge',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      unBillAgeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'unBillAge',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> unBillAgeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'unBillAge',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      unBillAgeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'unBillAge',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> unBillAgeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'unBillAge',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> unBillAgeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'unBillAge',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> unBillAgeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'unBillAge',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> unBillAgeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'unBillAge',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> unBillAgeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'unBillAge',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> unBillAgeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'unBillAge',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition> unBillAgeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'unBillAge',
        value: '',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      unBillAgeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'unBillAge',
        value: '',
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      unitsConsumedEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'unitsConsumed',
        value: value,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      unitsConsumedGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'unitsConsumed',
        value: value,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      unitsConsumedLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'unitsConsumed',
        value: value,
      ));
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      unitsConsumedBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'unitsConsumed',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension BillModelQueryObject
    on QueryBuilder<BillModel, BillModel, QFilterCondition> {
  QueryBuilder<BillModel, BillModel, QAfterFilterCondition>
      paymentHistoryElement(FilterQuery<PaymentHistoryModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'paymentHistory');
    });
  }
}

extension BillModelQueryLinks
    on QueryBuilder<BillModel, BillModel, QFilterCondition> {}

extension BillModelQuerySortBy on QueryBuilder<BillModel, BillModel, QSortBy> {
  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByArea() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'area', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByAreaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'area', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByArrears() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'arrears', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByArrearsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'arrears', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByBillAdjustment() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'billAdjustment', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByBillAdjustmentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'billAdjustment', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByBillMonth() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'billMonth', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByBillMonthDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'billMonth', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByBlock() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'block', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByBlockDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'block', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByCalculation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'calculation', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByCalculationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'calculation', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByCenterName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'centerName', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByCenterNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'centerName', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByComplaintsDial() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'complaintsDial', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByComplaintsDialDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'complaintsDial', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByConnectedLoad() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'connectedLoad', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByConnectedLoadDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'connectedLoad', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByConnectionDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'connectionDate', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByConnectionDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'connectionDate', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByConsumerNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'consumerNumber', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByConsumerNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'consumerNumber', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByCostOfElectricity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costOfElectricity', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy>
      sortByCostOfElectricityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costOfElectricity', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByCurrentBill() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentBill', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByCurrentBillDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentBill', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByDiscoName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discoName', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByDiscoNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discoName', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByDivision() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'division', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByDivisionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'division', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByDueDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dueDate', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByDueDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dueDate', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByEdOnFpa() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'edOnFpa', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByEdOnFpaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'edOnFpa', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByEdo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'edo', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByEdoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'edo', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByElectricityDuty() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'electricityDuty', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByElectricityDutyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'electricityDuty', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByEtOnFpa() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'etOnFpa', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByEtOnFpaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'etOnFpa', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByExpectedAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expectedAmount', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByExpectedAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expectedAmount', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByExtraTax() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'extraTax', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByExtraTaxDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'extraTax', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByFcSurcharge() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fcSurcharge', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByFcSurchargeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fcSurcharge', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByFeederName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'feederName', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByFeederNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'feederName', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByFuelPriceAdjustment() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fuelPriceAdjustment', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy>
      sortByFuelPriceAdjustmentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fuelPriceAdjustment', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByFurtherTax() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'furtherTax', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByFurtherTaxDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'furtherTax', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByFurtherTaxOnFpa() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'furtherTaxOnFpa', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByFurtherTaxOnFpaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'furtherTaxOnFpa', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByGopTariff() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gopTariff', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByGopTariffDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gopTariff', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByGst() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gst', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByGstDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gst', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByGstOnFpa() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gstOnFpa', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByGstOnFpaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gstOnFpa', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByIescoGstNo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iescoGstNo', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByIescoGstNoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iescoGstNo', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByImagePath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imagePath', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByImagePathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imagePath', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByIncomeTax() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'incomeTax', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByIncomeTaxDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'incomeTax', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByInstallment() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'installment', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByInstallmentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'installment', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByIsOvercharged() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isOvercharged', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByIsOverchargedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isOvercharged', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByIssueDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'issueDate', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByIssueDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'issueDate', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByItOnFpa() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itOnFpa', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByItOnFpaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itOnFpa', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByLoad() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'load', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByLoadDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'load', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByLockAge() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lockAge', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByLockAgeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lockAge', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByLpSurcharge() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lpSurcharge', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByLpSurchargeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lpSurcharge', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByMeterNo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'meterNo', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByMeterNoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'meterNo', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByMeterRentFixCharges() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'meterRentFixCharges', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy>
      sortByMeterRentFixChargesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'meterRentFixCharges', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByMf() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mf', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByMfDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mf', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByNoOfAct() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'noOfAct', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByNoOfActDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'noOfAct', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByOcrConfidence() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ocrConfidence', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByOcrConfidenceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ocrConfidence', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByOldAccountNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'oldAccountNumber', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy>
      sortByOldAccountNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'oldAccountNumber', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByOrCall() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'orCall', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByOrCallDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'orCall', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByOverchargeAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'overchargeAmount', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy>
      sortByOverchargeAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'overchargeAmount', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByPayableAfterDueDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'payableAfterDueDate', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy>
      sortByPayableAfterDueDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'payableAfterDueDate', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByPlotNo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'plotNo', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByPlotNoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'plotNo', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByPresentReading() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'presentReading', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByPresentReadingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'presentReading', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByPreviousReading() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'previousReading', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByPreviousReadingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'previousReading', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByQtrTariffAdj() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'qtrTariffAdj', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByQtrTariffAdjDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'qtrTariffAdj', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByReadingDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'readingDate', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByReadingDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'readingDate', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByReferenceNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'referenceNumber', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByReferenceNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'referenceNumber', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByRetailerStax() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'retailerStax', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByRetailerStaxDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'retailerStax', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortBySTaxOnFpa() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sTaxOnFpa', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortBySTaxOnFpaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sTaxOnFpa', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByScannedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'scannedAt', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByScannedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'scannedAt', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByServiceRent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serviceRent', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByServiceRentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serviceRent', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortBySms() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sms', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortBySmsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sms', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortBySonOf() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sonOf', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortBySonOfDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sonOf', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByStNo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stNo', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByStNoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stNo', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortBySubDivision() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subDivision', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortBySubDivisionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subDivision', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortBySubsidies() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subsidies', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortBySubsidiesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subsidies', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortBySupabaseId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'supabaseId', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortBySupabaseIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'supabaseId', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByTariff() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tariff', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByTariffDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tariff', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByTextReferenceTo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'textReferenceTo', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByTextReferenceToDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'textReferenceTo', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByTotalAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalAmount', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByTotalAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalAmount', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByTotalFpa() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalFpa', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByTotalFpaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalFpa', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByTotalTaxesOnFpa() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalTaxesOnFpa', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByTotalTaxesOnFpaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalTaxesOnFpa', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByTvFee() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tvFee', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByTvFeeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tvFee', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByUnBillAge() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unBillAge', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByUnBillAgeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unBillAge', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByUnitsConsumed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unitsConsumed', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> sortByUnitsConsumedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unitsConsumed', Sort.desc);
    });
  }
}

extension BillModelQuerySortThenBy
    on QueryBuilder<BillModel, BillModel, QSortThenBy> {
  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByArea() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'area', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByAreaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'area', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByArrears() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'arrears', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByArrearsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'arrears', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByBillAdjustment() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'billAdjustment', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByBillAdjustmentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'billAdjustment', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByBillMonth() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'billMonth', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByBillMonthDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'billMonth', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByBlock() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'block', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByBlockDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'block', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByCalculation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'calculation', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByCalculationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'calculation', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByCenterName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'centerName', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByCenterNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'centerName', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByComplaintsDial() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'complaintsDial', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByComplaintsDialDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'complaintsDial', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByConnectedLoad() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'connectedLoad', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByConnectedLoadDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'connectedLoad', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByConnectionDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'connectionDate', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByConnectionDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'connectionDate', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByConsumerNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'consumerNumber', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByConsumerNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'consumerNumber', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByCostOfElectricity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costOfElectricity', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy>
      thenByCostOfElectricityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costOfElectricity', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByCurrentBill() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentBill', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByCurrentBillDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentBill', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByDiscoName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discoName', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByDiscoNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discoName', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByDivision() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'division', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByDivisionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'division', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByDueDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dueDate', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByDueDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dueDate', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByEdOnFpa() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'edOnFpa', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByEdOnFpaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'edOnFpa', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByEdo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'edo', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByEdoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'edo', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByElectricityDuty() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'electricityDuty', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByElectricityDutyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'electricityDuty', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByEtOnFpa() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'etOnFpa', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByEtOnFpaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'etOnFpa', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByExpectedAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expectedAmount', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByExpectedAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expectedAmount', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByExtraTax() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'extraTax', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByExtraTaxDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'extraTax', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByFcSurcharge() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fcSurcharge', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByFcSurchargeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fcSurcharge', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByFeederName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'feederName', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByFeederNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'feederName', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByFuelPriceAdjustment() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fuelPriceAdjustment', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy>
      thenByFuelPriceAdjustmentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fuelPriceAdjustment', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByFurtherTax() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'furtherTax', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByFurtherTaxDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'furtherTax', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByFurtherTaxOnFpa() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'furtherTaxOnFpa', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByFurtherTaxOnFpaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'furtherTaxOnFpa', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByGopTariff() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gopTariff', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByGopTariffDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gopTariff', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByGst() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gst', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByGstDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gst', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByGstOnFpa() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gstOnFpa', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByGstOnFpaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gstOnFpa', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByIescoGstNo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iescoGstNo', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByIescoGstNoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iescoGstNo', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByImagePath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imagePath', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByImagePathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imagePath', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByIncomeTax() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'incomeTax', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByIncomeTaxDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'incomeTax', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByInstallment() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'installment', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByInstallmentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'installment', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByIsOvercharged() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isOvercharged', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByIsOverchargedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isOvercharged', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByIssueDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'issueDate', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByIssueDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'issueDate', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByItOnFpa() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itOnFpa', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByItOnFpaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itOnFpa', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByLoad() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'load', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByLoadDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'load', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByLockAge() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lockAge', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByLockAgeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lockAge', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByLpSurcharge() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lpSurcharge', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByLpSurchargeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lpSurcharge', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByMeterNo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'meterNo', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByMeterNoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'meterNo', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByMeterRentFixCharges() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'meterRentFixCharges', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy>
      thenByMeterRentFixChargesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'meterRentFixCharges', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByMf() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mf', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByMfDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mf', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByNoOfAct() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'noOfAct', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByNoOfActDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'noOfAct', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByOcrConfidence() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ocrConfidence', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByOcrConfidenceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ocrConfidence', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByOldAccountNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'oldAccountNumber', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy>
      thenByOldAccountNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'oldAccountNumber', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByOrCall() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'orCall', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByOrCallDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'orCall', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByOverchargeAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'overchargeAmount', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy>
      thenByOverchargeAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'overchargeAmount', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByPayableAfterDueDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'payableAfterDueDate', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy>
      thenByPayableAfterDueDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'payableAfterDueDate', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByPlotNo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'plotNo', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByPlotNoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'plotNo', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByPresentReading() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'presentReading', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByPresentReadingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'presentReading', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByPreviousReading() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'previousReading', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByPreviousReadingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'previousReading', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByQtrTariffAdj() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'qtrTariffAdj', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByQtrTariffAdjDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'qtrTariffAdj', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByReadingDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'readingDate', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByReadingDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'readingDate', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByReferenceNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'referenceNumber', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByReferenceNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'referenceNumber', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByRetailerStax() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'retailerStax', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByRetailerStaxDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'retailerStax', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenBySTaxOnFpa() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sTaxOnFpa', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenBySTaxOnFpaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sTaxOnFpa', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByScannedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'scannedAt', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByScannedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'scannedAt', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByServiceRent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serviceRent', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByServiceRentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serviceRent', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenBySms() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sms', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenBySmsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sms', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenBySonOf() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sonOf', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenBySonOfDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sonOf', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByStNo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stNo', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByStNoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stNo', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenBySubDivision() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subDivision', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenBySubDivisionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subDivision', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenBySubsidies() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subsidies', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenBySubsidiesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subsidies', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenBySupabaseId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'supabaseId', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenBySupabaseIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'supabaseId', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByTariff() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tariff', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByTariffDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tariff', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByTextReferenceTo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'textReferenceTo', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByTextReferenceToDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'textReferenceTo', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByTotalAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalAmount', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByTotalAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalAmount', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByTotalFpa() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalFpa', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByTotalFpaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalFpa', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByTotalTaxesOnFpa() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalTaxesOnFpa', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByTotalTaxesOnFpaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalTaxesOnFpa', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByTvFee() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tvFee', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByTvFeeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tvFee', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByUnBillAge() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unBillAge', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByUnBillAgeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unBillAge', Sort.desc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByUnitsConsumed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unitsConsumed', Sort.asc);
    });
  }

  QueryBuilder<BillModel, BillModel, QAfterSortBy> thenByUnitsConsumedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unitsConsumed', Sort.desc);
    });
  }
}

extension BillModelQueryWhereDistinct
    on QueryBuilder<BillModel, BillModel, QDistinct> {
  QueryBuilder<BillModel, BillModel, QDistinct> distinctByArea(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'area', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctByArrears() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'arrears');
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctByBillAdjustment() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'billAdjustment');
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctByBillMonth() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'billMonth');
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctByBlock(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'block', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctByCalculation(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'calculation', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctByCenterName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'centerName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctByComplaintsDial(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'complaintsDial',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctByConnectedLoad(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'connectedLoad',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctByConnectionDate(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'connectionDate',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctByConsumerNumber(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'consumerNumber',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctByCostOfElectricity() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'costOfElectricity');
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctByCurrentBill() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'currentBill');
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctByDiscoName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'discoName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctByDivision(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'division', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctByDueDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dueDate');
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctByEdOnFpa() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'edOnFpa');
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctByEdo(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'edo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctByElectricityDuty() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'electricityDuty');
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctByEtOnFpa() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'etOnFpa');
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctByExpectedAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'expectedAmount');
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctByExtraTax() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'extraTax');
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctByFcSurcharge() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fcSurcharge');
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctByFeederName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'feederName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct>
      distinctByFuelPriceAdjustment() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fuelPriceAdjustment');
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctByFurtherTax() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'furtherTax');
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctByFurtherTaxOnFpa() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'furtherTaxOnFpa');
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctByGopTariff() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'gopTariff');
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctByGst() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'gst');
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctByGstOnFpa() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'gstOnFpa');
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctByIescoGstNo(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'iescoGstNo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctByImagePath(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'imagePath', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctByIncomeTax() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'incomeTax');
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctByInstallment() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'installment');
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctByIsOvercharged() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isOvercharged');
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctByIssueDate(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'issueDate', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctByItOnFpa() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'itOnFpa');
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctByLoad() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'load');
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctByLockAge(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lockAge', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctByLpSurcharge() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lpSurcharge');
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctByMeterNo(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'meterNo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct>
      distinctByMeterRentFixCharges() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'meterRentFixCharges');
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctByMf() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'mf');
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctByNoOfAct(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'noOfAct', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctByOcrConfidence() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ocrConfidence');
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctByOldAccountNumber(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'oldAccountNumber',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctByOrCall(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'orCall', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctByOverchargeAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'overchargeAmount');
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctByPayableAfterDueDate(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'payableAfterDueDate',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctByPlotNo(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'plotNo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctByPresentReading() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'presentReading');
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctByPreviousReading() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'previousReading');
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctByQtrTariffAdj() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'qtrTariffAdj');
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctByReadingDate(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'readingDate', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctByReferenceNumber(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'referenceNumber',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctByRetailerStax() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'retailerStax');
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctBySTaxOnFpa() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sTaxOnFpa');
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctByScannedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'scannedAt');
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctByServiceRent() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'serviceRent');
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctBySms(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sms', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctBySonOf(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sonOf', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctByStNo(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'stNo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctByStatus(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'status', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctBySubDivision(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'subDivision', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctBySubsidies() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'subsidies');
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctBySupabaseId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'supabaseId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctByTariff(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tariff', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctByTextReferenceTo(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'textReferenceTo',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctByTotalAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalAmount');
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctByTotalFpa() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalFpa');
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctByTotalTaxesOnFpa() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalTaxesOnFpa');
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctByTvFee() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tvFee');
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctByUnBillAge(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'unBillAge', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BillModel, BillModel, QDistinct> distinctByUnitsConsumed() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'unitsConsumed');
    });
  }
}

extension BillModelQueryProperty
    on QueryBuilder<BillModel, BillModel, QQueryProperty> {
  QueryBuilder<BillModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<BillModel, String?, QQueryOperations> areaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'area');
    });
  }

  QueryBuilder<BillModel, double?, QQueryOperations> arrearsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'arrears');
    });
  }

  QueryBuilder<BillModel, double?, QQueryOperations> billAdjustmentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'billAdjustment');
    });
  }

  QueryBuilder<BillModel, DateTime, QQueryOperations> billMonthProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'billMonth');
    });
  }

  QueryBuilder<BillModel, String?, QQueryOperations> blockProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'block');
    });
  }

  QueryBuilder<BillModel, String?, QQueryOperations> calculationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'calculation');
    });
  }

  QueryBuilder<BillModel, String?, QQueryOperations> centerNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'centerName');
    });
  }

  QueryBuilder<BillModel, String?, QQueryOperations> complaintsDialProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'complaintsDial');
    });
  }

  QueryBuilder<BillModel, String?, QQueryOperations> connectedLoadProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'connectedLoad');
    });
  }

  QueryBuilder<BillModel, String?, QQueryOperations> connectionDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'connectionDate');
    });
  }

  QueryBuilder<BillModel, String, QQueryOperations> consumerNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'consumerNumber');
    });
  }

  QueryBuilder<BillModel, double?, QQueryOperations>
      costOfElectricityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'costOfElectricity');
    });
  }

  QueryBuilder<BillModel, double?, QQueryOperations> currentBillProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'currentBill');
    });
  }

  QueryBuilder<BillModel, String, QQueryOperations> discoNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'discoName');
    });
  }

  QueryBuilder<BillModel, String?, QQueryOperations> divisionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'division');
    });
  }

  QueryBuilder<BillModel, DateTime, QQueryOperations> dueDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dueDate');
    });
  }

  QueryBuilder<BillModel, double?, QQueryOperations> edOnFpaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'edOnFpa');
    });
  }

  QueryBuilder<BillModel, String?, QQueryOperations> edoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'edo');
    });
  }

  QueryBuilder<BillModel, double?, QQueryOperations> electricityDutyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'electricityDuty');
    });
  }

  QueryBuilder<BillModel, double?, QQueryOperations> etOnFpaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'etOnFpa');
    });
  }

  QueryBuilder<BillModel, double, QQueryOperations> expectedAmountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'expectedAmount');
    });
  }

  QueryBuilder<BillModel, double?, QQueryOperations> extraTaxProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'extraTax');
    });
  }

  QueryBuilder<BillModel, double?, QQueryOperations> fcSurchargeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fcSurcharge');
    });
  }

  QueryBuilder<BillModel, String?, QQueryOperations> feederNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'feederName');
    });
  }

  QueryBuilder<BillModel, double?, QQueryOperations>
      fuelPriceAdjustmentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fuelPriceAdjustment');
    });
  }

  QueryBuilder<BillModel, double?, QQueryOperations> furtherTaxProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'furtherTax');
    });
  }

  QueryBuilder<BillModel, double?, QQueryOperations> furtherTaxOnFpaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'furtherTaxOnFpa');
    });
  }

  QueryBuilder<BillModel, double?, QQueryOperations> gopTariffProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'gopTariff');
    });
  }

  QueryBuilder<BillModel, double?, QQueryOperations> gstProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'gst');
    });
  }

  QueryBuilder<BillModel, double?, QQueryOperations> gstOnFpaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'gstOnFpa');
    });
  }

  QueryBuilder<BillModel, String?, QQueryOperations> iescoGstNoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'iescoGstNo');
    });
  }

  QueryBuilder<BillModel, String?, QQueryOperations> imagePathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'imagePath');
    });
  }

  QueryBuilder<BillModel, double?, QQueryOperations> incomeTaxProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'incomeTax');
    });
  }

  QueryBuilder<BillModel, double?, QQueryOperations> installmentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'installment');
    });
  }

  QueryBuilder<BillModel, bool, QQueryOperations> isOverchargedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isOvercharged');
    });
  }

  QueryBuilder<BillModel, String?, QQueryOperations> issueDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'issueDate');
    });
  }

  QueryBuilder<BillModel, double?, QQueryOperations> itOnFpaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'itOnFpa');
    });
  }

  QueryBuilder<BillModel, double?, QQueryOperations> loadProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'load');
    });
  }

  QueryBuilder<BillModel, String?, QQueryOperations> lockAgeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lockAge');
    });
  }

  QueryBuilder<BillModel, double?, QQueryOperations> lpSurchargeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lpSurcharge');
    });
  }

  QueryBuilder<BillModel, String?, QQueryOperations> meterNoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'meterNo');
    });
  }

  QueryBuilder<BillModel, double?, QQueryOperations>
      meterRentFixChargesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'meterRentFixCharges');
    });
  }

  QueryBuilder<BillModel, int?, QQueryOperations> mfProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'mf');
    });
  }

  QueryBuilder<BillModel, String?, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<BillModel, String?, QQueryOperations> noOfActProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'noOfAct');
    });
  }

  QueryBuilder<BillModel, double, QQueryOperations> ocrConfidenceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ocrConfidence');
    });
  }

  QueryBuilder<BillModel, String?, QQueryOperations>
      oldAccountNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'oldAccountNumber');
    });
  }

  QueryBuilder<BillModel, String?, QQueryOperations> orCallProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'orCall');
    });
  }

  QueryBuilder<BillModel, double, QQueryOperations> overchargeAmountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'overchargeAmount');
    });
  }

  QueryBuilder<BillModel, String?, QQueryOperations>
      payableAfterDueDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'payableAfterDueDate');
    });
  }

  QueryBuilder<BillModel, List<PaymentHistoryModel>, QQueryOperations>
      paymentHistoryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'paymentHistory');
    });
  }

  QueryBuilder<BillModel, String?, QQueryOperations> plotNoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'plotNo');
    });
  }

  QueryBuilder<BillModel, int?, QQueryOperations> presentReadingProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'presentReading');
    });
  }

  QueryBuilder<BillModel, int?, QQueryOperations> previousReadingProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'previousReading');
    });
  }

  QueryBuilder<BillModel, double?, QQueryOperations> qtrTariffAdjProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'qtrTariffAdj');
    });
  }

  QueryBuilder<BillModel, String?, QQueryOperations> readingDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'readingDate');
    });
  }

  QueryBuilder<BillModel, String?, QQueryOperations> referenceNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'referenceNumber');
    });
  }

  QueryBuilder<BillModel, double?, QQueryOperations> retailerStaxProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'retailerStax');
    });
  }

  QueryBuilder<BillModel, double?, QQueryOperations> sTaxOnFpaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sTaxOnFpa');
    });
  }

  QueryBuilder<BillModel, DateTime, QQueryOperations> scannedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'scannedAt');
    });
  }

  QueryBuilder<BillModel, double?, QQueryOperations> serviceRentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'serviceRent');
    });
  }

  QueryBuilder<BillModel, String?, QQueryOperations> smsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sms');
    });
  }

  QueryBuilder<BillModel, String?, QQueryOperations> sonOfProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sonOf');
    });
  }

  QueryBuilder<BillModel, String?, QQueryOperations> stNoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'stNo');
    });
  }

  QueryBuilder<BillModel, String?, QQueryOperations> statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'status');
    });
  }

  QueryBuilder<BillModel, String?, QQueryOperations> subDivisionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'subDivision');
    });
  }

  QueryBuilder<BillModel, double?, QQueryOperations> subsidiesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'subsidies');
    });
  }

  QueryBuilder<BillModel, String?, QQueryOperations> supabaseIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'supabaseId');
    });
  }

  QueryBuilder<BillModel, String?, QQueryOperations> tariffProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tariff');
    });
  }

  QueryBuilder<BillModel, String?, QQueryOperations> textReferenceToProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'textReferenceTo');
    });
  }

  QueryBuilder<BillModel, double, QQueryOperations> totalAmountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalAmount');
    });
  }

  QueryBuilder<BillModel, double?, QQueryOperations> totalFpaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalFpa');
    });
  }

  QueryBuilder<BillModel, double?, QQueryOperations> totalTaxesOnFpaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalTaxesOnFpa');
    });
  }

  QueryBuilder<BillModel, double?, QQueryOperations> tvFeeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tvFee');
    });
  }

  QueryBuilder<BillModel, String?, QQueryOperations> unBillAgeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'unBillAge');
    });
  }

  QueryBuilder<BillModel, int, QQueryOperations> unitsConsumedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'unitsConsumed');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const PaymentHistoryModelSchema = Schema(
  name: r'PaymentHistoryModel',
  id: -3822110202462349938,
  properties: {
    r'bill': PropertySchema(
      id: 0,
      name: r'bill',
      type: IsarType.double,
    ),
    r'month': PropertySchema(
      id: 1,
      name: r'month',
      type: IsarType.string,
    ),
    r'payment': PropertySchema(
      id: 2,
      name: r'payment',
      type: IsarType.double,
    ),
    r'units': PropertySchema(
      id: 3,
      name: r'units',
      type: IsarType.string,
    )
  },
  estimateSize: _paymentHistoryModelEstimateSize,
  serialize: _paymentHistoryModelSerialize,
  deserialize: _paymentHistoryModelDeserialize,
  deserializeProp: _paymentHistoryModelDeserializeProp,
);

int _paymentHistoryModelEstimateSize(
  PaymentHistoryModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.month;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.units;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _paymentHistoryModelSerialize(
  PaymentHistoryModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.bill);
  writer.writeString(offsets[1], object.month);
  writer.writeDouble(offsets[2], object.payment);
  writer.writeString(offsets[3], object.units);
}

PaymentHistoryModel _paymentHistoryModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = PaymentHistoryModel();
  object.bill = reader.readDoubleOrNull(offsets[0]);
  object.month = reader.readStringOrNull(offsets[1]);
  object.payment = reader.readDoubleOrNull(offsets[2]);
  object.units = reader.readStringOrNull(offsets[3]);
  return object;
}

P _paymentHistoryModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDoubleOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readDoubleOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension PaymentHistoryModelQueryFilter on QueryBuilder<PaymentHistoryModel,
    PaymentHistoryModel, QFilterCondition> {
  QueryBuilder<PaymentHistoryModel, PaymentHistoryModel, QAfterFilterCondition>
      billIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'bill',
      ));
    });
  }

  QueryBuilder<PaymentHistoryModel, PaymentHistoryModel, QAfterFilterCondition>
      billIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'bill',
      ));
    });
  }

  QueryBuilder<PaymentHistoryModel, PaymentHistoryModel, QAfterFilterCondition>
      billEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bill',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PaymentHistoryModel, PaymentHistoryModel, QAfterFilterCondition>
      billGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'bill',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PaymentHistoryModel, PaymentHistoryModel, QAfterFilterCondition>
      billLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'bill',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PaymentHistoryModel, PaymentHistoryModel, QAfterFilterCondition>
      billBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'bill',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PaymentHistoryModel, PaymentHistoryModel, QAfterFilterCondition>
      monthIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'month',
      ));
    });
  }

  QueryBuilder<PaymentHistoryModel, PaymentHistoryModel, QAfterFilterCondition>
      monthIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'month',
      ));
    });
  }

  QueryBuilder<PaymentHistoryModel, PaymentHistoryModel, QAfterFilterCondition>
      monthEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'month',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PaymentHistoryModel, PaymentHistoryModel, QAfterFilterCondition>
      monthGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'month',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PaymentHistoryModel, PaymentHistoryModel, QAfterFilterCondition>
      monthLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'month',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PaymentHistoryModel, PaymentHistoryModel, QAfterFilterCondition>
      monthBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'month',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PaymentHistoryModel, PaymentHistoryModel, QAfterFilterCondition>
      monthStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'month',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PaymentHistoryModel, PaymentHistoryModel, QAfterFilterCondition>
      monthEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'month',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PaymentHistoryModel, PaymentHistoryModel, QAfterFilterCondition>
      monthContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'month',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PaymentHistoryModel, PaymentHistoryModel, QAfterFilterCondition>
      monthMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'month',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PaymentHistoryModel, PaymentHistoryModel, QAfterFilterCondition>
      monthIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'month',
        value: '',
      ));
    });
  }

  QueryBuilder<PaymentHistoryModel, PaymentHistoryModel, QAfterFilterCondition>
      monthIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'month',
        value: '',
      ));
    });
  }

  QueryBuilder<PaymentHistoryModel, PaymentHistoryModel, QAfterFilterCondition>
      paymentIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'payment',
      ));
    });
  }

  QueryBuilder<PaymentHistoryModel, PaymentHistoryModel, QAfterFilterCondition>
      paymentIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'payment',
      ));
    });
  }

  QueryBuilder<PaymentHistoryModel, PaymentHistoryModel, QAfterFilterCondition>
      paymentEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'payment',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PaymentHistoryModel, PaymentHistoryModel, QAfterFilterCondition>
      paymentGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'payment',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PaymentHistoryModel, PaymentHistoryModel, QAfterFilterCondition>
      paymentLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'payment',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PaymentHistoryModel, PaymentHistoryModel, QAfterFilterCondition>
      paymentBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'payment',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PaymentHistoryModel, PaymentHistoryModel, QAfterFilterCondition>
      unitsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'units',
      ));
    });
  }

  QueryBuilder<PaymentHistoryModel, PaymentHistoryModel, QAfterFilterCondition>
      unitsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'units',
      ));
    });
  }

  QueryBuilder<PaymentHistoryModel, PaymentHistoryModel, QAfterFilterCondition>
      unitsEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'units',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PaymentHistoryModel, PaymentHistoryModel, QAfterFilterCondition>
      unitsGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'units',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PaymentHistoryModel, PaymentHistoryModel, QAfterFilterCondition>
      unitsLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'units',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PaymentHistoryModel, PaymentHistoryModel, QAfterFilterCondition>
      unitsBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'units',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PaymentHistoryModel, PaymentHistoryModel, QAfterFilterCondition>
      unitsStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'units',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PaymentHistoryModel, PaymentHistoryModel, QAfterFilterCondition>
      unitsEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'units',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PaymentHistoryModel, PaymentHistoryModel, QAfterFilterCondition>
      unitsContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'units',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PaymentHistoryModel, PaymentHistoryModel, QAfterFilterCondition>
      unitsMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'units',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PaymentHistoryModel, PaymentHistoryModel, QAfterFilterCondition>
      unitsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'units',
        value: '',
      ));
    });
  }

  QueryBuilder<PaymentHistoryModel, PaymentHistoryModel, QAfterFilterCondition>
      unitsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'units',
        value: '',
      ));
    });
  }
}

extension PaymentHistoryModelQueryObject on QueryBuilder<PaymentHistoryModel,
    PaymentHistoryModel, QFilterCondition> {}
