import 'dart:io';
import '../parsers/bill_parser.dart';
import 'gemini_bill_service.dart';

class HybridBillExtractor {
  final GeminiBillService _geminiService;

  HybridBillExtractor({
    required GeminiBillService geminiService,
  }) : _geminiService = geminiService;

  /// Now exclusively uses Gemini AI for extraction as requested.
  /// Local OCR fallback has been removed for maximum accuracy via AI.
  Future<ParsedBill?> extractBill(File imageFile) async {
    try {
      print('HybridExtractor: Attempting Gemini AI Extraction...');
      return await _geminiService.parseBill(imageFile);
    } catch (e) {
      print('HybridExtractor: Gemini Extraction failed: $e');
      return null;
    }
  }
}
