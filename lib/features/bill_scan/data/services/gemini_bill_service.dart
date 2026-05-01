import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import '../../../../domain/entities/bill.dart';
import '../parsers/bill_parser.dart';

class GeminiBillService {
  final Dio dio;
  final String apiKey;
  late final GenerativeModel model;

  GeminiBillService({required this.dio, required this.apiKey}) {
    model = GenerativeModel(
      model: 'gemini-flash-latest',
      apiKey: apiKey,
      generationConfig: GenerationConfig(
        responseMimeType: 'application/json',
      ),
    );
  }

  Future<ParsedBill?> parseBill(File imageFile) async {
    try {
      final imageBytes = await imageFile.readAsBytes();
      final prompt = [
        Content.multi([
          TextPart("""
You are an expert data extraction assistant. I am providing you with an image of an IESCO (Islamabad Electric Supply Company) electricity bill. Your task is to extract ALL fields and values from EVERY visible box/section of the bill image accurately.

IMPORTANT RULES:
- Keep EXACT field names as they appear on the bill (do not rename, merge, or simplify any field)
- Even if two fields look similar (e.g., "Load" and "Connected Load"), treat them as SEPARATE fields with their own values
- If a field is present but has no value, write null
- Do NOT skip any field or box
- Maintain the exact box/section structure as it appears on the bill
- IMPORTANT: The field is "EDO", do NOT output "ED@" even if it looks like an @ symbol.
- Return the result strictly in JSON format

Extract the data in the following JSON structure:

{
  "box_1_connection_info": {
    "CONNECTION DATE": "",
    "CONNECTED LOAD": "",
    "EDO": "",
    "BILL MONTH": "",
    "READING DATE": "",
    "ISSUE DATE": "",
    "DUE DATE": ""
  },
  "box_2_consumer_info": {
    "CONSUMER ID": "",
    "TARIFF": "",
    "LOAD": "",
    "OLD A/C NUMBER": "",
    "DIVISION": "",
    "SUB DIVISION": "",
    "REFERENCE NO": "",
    "LOCK AGE": "",
    "NO OF ACT": "",
    "UN-BILL-AGE": "",
    "FEEDER NAME": "",
    "IESCO GST NO": ""
  },
  "box_3_name_and_address": {
    "NAME": "",
    "S/O": "",
    "PLOT NO": "",
    "ST NO": "",
    "BLOCK": "",
    "AREA": ""
  },
  "box_4_payment_history": [
    {"MONTH": "", "UNITS": "", "BILL": "", "PAYMENT": ""}
  ],
  "box_5_meter_reading": {
    "METER NO": "",
    "PREVIOUS READING": "",
    "PRESENT READING": "",
    "MF": "",
    "UNITS": "",
    "STATUS": ""
  },
  "box_6_iesco_charges": {
    "UNITS CONSUMED": "",
    "COST OF ELECTRICITY": "",
    "METER RENT FIX CHARGES": "",
    "SERVICE RENT": "",
    "FUEL PRICE ADJUSTMENT": "",
    "F.C SURCHARGE": "",
    "QTR TARIFF ADJ/DMC": "",
    "TOTAL": ""
  },
  "box_7_govt_charges": {
    "ELECTRICITY DUTY": "",
    "TV FEE": "",
    "GST": "",
    "INCOME TAX": "",
    "EXTRA TAX": "",
    "FURTHER TAX": "",
    "RETAILER STAX": "",
    "GST ON FPA": "",
    "ED ON FPA": "",
    "FURTHER TAX ON FPA": "",
    "S.TAX ON FPA": "",
    "IT ON FPA": "",
    "ET ON FPA": "",
    "TOTAL TAXES ON FPA": "",
    "TOTAL": ""
  },
  "box_8_total_charges": {
    "ARREAR/AGE": "",
    "CURRENT BILL": "",
    "BILL ADJUSTMENT": "",
    "INSTALLEMENT": "",
    "SUBSIDIES": "",
    "TOTAL FPA": "",
    "PAYABLE WITHIN DUE DATE": "",
    "L.P.SURCHARGE": "",
    "PAYABLE AFTER DUE DATE": ""
  },
  "box_9_bill_calculation": {
    "GOP TARIFF": "",
    "UNITS": "",
    "CALCULATION (GOP TARIFF x UNITS)": ""
  },
  "box_10_contact_info": {
    "TEXT REFERENCE NO TO": "",
    "OR CALL": "",
    "CENTER NAME": "",
    "FOR COMPLAINTS DIAL": "",
    "SMS": ""
  }
}

Now extract all values from the bill image and return the fully filled JSON. Do not add any explanation, just return the JSON.
"""),
          DataPart('image/jpeg', imageBytes),
        ])
      ];

      final response = await model.generateContent(prompt);

      if (response.text != null) {
        final cleanJson = response.text!
            .replaceAll('```json', '')
            .replaceAll('```', '')
            .trim();
        print('--- GEMINI JSON RESPONSE (CHUNKED) ---');
        const int chunkSize = 1000;
        for (int i = 0; i < cleanJson.length; i += chunkSize) {
          final end = (i + chunkSize < cleanJson.length) ? i + chunkSize : cleanJson.length;
          print(cleanJson.substring(i, end));
        }
        print('---------------------------------------');
        final Map<String, dynamic> data = jsonDecode(cleanJson);
        return _mapJsonToParsedBill(data);
      }
      return null;
    } catch (e) {
      print('Gemini SDK Error: $e');
      return null;
    }
  }

  double? _amt(dynamic v) {
    if (v == null) return null;
    final s = v.toString().replaceAll(RegExp(r'[^0-9.]'), '');
    return s.isEmpty ? null : double.tryParse(s);
  }

  int? _int(dynamic v) {
    if (v == null) return null;
    final s = v.toString().replaceAll(RegExp(r'[^0-9]'), '');
    return s.isEmpty ? null : int.tryParse(s);
  }

  String? _str(dynamic v) {
    if (v == null) return null;
    final s = v.toString().trim();
    return (s.isEmpty || s == 'null') ? null : s;
  }

  ParsedBill _mapJsonToParsedBill(Map<String, dynamic> json) {
    final b1 = json['box_1_connection_info'] as Map<String, dynamic>? ?? {};
    final b2 = json['box_2_consumer_info'] as Map<String, dynamic>? ?? {};
    final b3 = json['box_3_name_and_address'] as Map<String, dynamic>? ?? {};
    final b4 = json['box_4_payment_history'] as List? ?? [];
    final b5 = json['box_5_meter_reading'] as Map<String, dynamic>? ?? {};
    final b6 = json['box_6_iesco_charges'] as Map<String, dynamic>? ?? {};
    final b7 = json['box_7_govt_charges'] as Map<String, dynamic>? ?? {};
    final b8 = json['box_8_total_charges'] as Map<String, dynamic>? ?? {};
    final b9 = json['box_9_bill_calculation'] as Map<String, dynamic>? ?? {};
    final b10 = json['box_10_contact_info'] as Map<String, dynamic>? ?? {};

    final List<PaymentHistoryEntry> history = b4.map((h) => PaymentHistoryEntry(
      month: _str(h['MONTH']) ?? '',
      units: _str(h['UNITS']) ?? '',
      bill: _amt(h['BILL']) ?? 0,
      payment: _amt(h['PAYMENT']) ?? 0,
    )).toList();

    return ParsedBill(
      discoName: 'IESCO',
      paymentHistory: history,
      // BOX 1
      connectionDate:  _str(b1['CONNECTION DATE']),
      connectedLoad:   _str(b1['CONNECTED LOAD']),
      edo:             _str(b1['EDO']) ?? _str(b1['ED@']),
      billMonthRaw:    _str(b1['BILL MONTH']),
      readingDate:     _str(b1['READING DATE']),
      issueDate:       _str(b1['ISSUE DATE']),
      dueDateRaw:      _str(b1['DUE DATE']),
      // BOX 2
      consumerNumber:  _str(b2['CONSUMER ID']),
      tariff:          _str(b2['TARIFF']),
      load:            _amt(b2['LOAD']),
      oldAccountNumber: _str(b2['OLD A/C NUMBER']),
      division:        _str(b2['DIVISION']),
      subDivision:     _str(b2['SUB DIVISION']),
      referenceNumber: _str(b2['REFERENCE NO']),
      lockAge:         _str(b2['LOCK AGE']),
      noOfAct:         _str(b2['NO OF ACT']),
      unBillAge:       _str(b2['UN-BILL-AGE']),
      feederName:      _str(b2['FEEDER NAME']),
      iescoGstNo:      _str(b2['IESCO GST NO']),
      // BOX 3
      name:            _str(b3['NAME']),
      sonOf:           _str(b3['S/O']),
      plotNo:          _str(b3['PLOT NO']),
      stNo:            _str(b3['ST NO']),
      block:           _str(b3['BLOCK']),
      area:            _str(b3['AREA']),
      // BOX 5
      meterNo:         _str(b5['METER NO']),
      previousReading: _int(b5['PREVIOUS READING']),
      presentReading:  _int(b5['PRESENT READING']),
      mf:              _int(b5['MF']) ?? 1,
      unitsConsumed:   _int(b5['UNITS']),
      status:          _str(b5['STATUS']),
      // BOX 6
      unitsConsumedB6: _str(b6['UNITS CONSUMED']),
      costOfElectricity:      _amt(b6['COST OF ELECTRICITY']),
      meterRentFixCharges:    _amt(b6['METER RENT FIX CHARGES']),
      serviceRent:            _amt(b6['SERVICE RENT']),
      fuelPriceAdjustment:    _amt(b6['FUEL PRICE ADJUSTMENT']),
      fcSurcharge:            _amt(b6['F.C SURCHARGE']),
      qtrTariffAdj:           _amt(b6['QTR TARIFF ADJ/DMC']),
      // BOX 7
      electricityDuty:   _amt(b7['ELECTRICITY DUTY']),
      tvFee:             _amt(b7['TV FEE']),
      gst:               _amt(b7['GST']),
      incomeTax:         _amt(b7['INCOME TAX']),
      extraTax:          _amt(b7['EXTRA TAX']),
      furtherTax:        _amt(b7['FURTHER TAX']),
      retailerStax:      _amt(b7['RETAILER STAX']),
      gstOnFpa:          _amt(b7['GST ON FPA']),
      edOnFpa:           _amt(b7['ED ON FPA']),
      furtherTaxOnFpa:   _amt(b7['FURTHER TAX ON FPA']),
      sTaxOnFpa:         _amt(b7['S.TAX ON FPA']),
      itOnFpa:           _amt(b7['IT ON FPA']),
      etOnFpa:           _amt(b7['ET ON FPA']),
      totalTaxesOnFpa:   _amt(b7['TOTAL TAXES ON FPA']),
      // BOX 8
      arrears:              _amt(b8['ARREAR/AGE']),
      currentBill:          _amt(b8['CURRENT BILL']),
      billAdjustment:       _amt(b8['BILL ADJUSTMENT']),
      installment:          _amt(b8['INSTALLEMENT']),
      subsidies:            _amt(b8['SUBSIDIES']),
      totalFpa:             _amt(b8['TOTAL FPA']),
      totalAmount:          _amt(b8['PAYABLE WITHIN DUE DATE']),
      lpSurcharge:          _amt(b8['L.P.SURCHARGE']),
      payableAfterDueDate:  _str(b8['PAYABLE AFTER DUE DATE']),
      // BOX 9
      gopTariff:    _amt(b9['GOP TARIFF']),
      calculation:  _str(b9['CALCULATION (GOP TARIFF x UNITS)']),
      // BOX 10
      textReferenceTo: _str(b10['TEXT REFERENCE NO TO']),
      orCall:          _str(b10['OR CALL']),
      centerName:      _str(b10['CENTER NAME']),
      complaintsDial:  _str(b10['FOR COMPLAINTS DIAL']),
      sms:             _str(b10['SMS']),
    );
  }
}
