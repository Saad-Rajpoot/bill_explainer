import 'dart:io';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';
import 'package:image/image.dart' as img;
import 'package:path_provider/path_provider.dart';
import '../../../core/errors/exceptions.dart';

/// On-device OCR using Google ML Kit.
/// FREE — processes entirely on device, no API calls.
class OcrService {
  final TextRecognizer _recognizer =
      TextRecognizer(script: TextRecognitionScript.latin);

  /// Compresses image to ≤ 100KB then runs ML Kit OCR.
  /// Returns raw OCR text string.
  Future<String> extractTextFromImage(String imagePath) async {
    try {
      // 1. Compress image
      final compressedPath = await _compressImage(imagePath);

      // 2. Run OCR
      final inputImage = InputImage.fromFilePath(compressedPath);
      final RecognizedText recognized =
          await _recognizer.processImage(inputImage);

      // 3. Smart tabular concatenation
      final allLines = <TextLine>[];
      for (final block in recognized.blocks) {
        allLines.addAll(block.lines);
      }

      // Sort lines by Y coordinate
      allLines.sort((a, b) => a.boundingBox.top.compareTo(b.boundingBox.top));

      // Group lines that are on the same vertical level
      final rows = <List<TextLine>>[];
      for (final line in allLines) {
        if (rows.isEmpty) {
          rows.add([line]);
        } else {
          final lastRow = rows.last;
          final avgTop = lastRow.map((e) => e.boundingBox.top).reduce((a, b) => a + b) / lastRow.length;
          
          // Tolerance of 15 pixels for same row
          if ((line.boundingBox.top - avgTop).abs() < 15) {
            lastRow.add(line);
          } else {
            rows.add([line]);
          }
        }
      }

      // Sort each row by X coordinate and join
      final buffer = StringBuffer();
      for (final row in rows) {
        row.sort((a, b) => a.boundingBox.left.compareTo(b.boundingBox.left));
        buffer.writeln(row.map((e) => e.text).join('     ')); // Use multiple spaces to ensure separation
      }

      final text = buffer.toString();
      if (text.trim().isEmpty) {
        throw const OcrException(message: 'بل سے کوئی متن نہیں پڑھا جا سکا');
      }
      return text;
    } on OcrException {
      rethrow;
    } catch (e) {
      throw OcrException(message: 'OCR خرابی: ${e.toString()}');
    }
  }

  /// Compress image to JPEG quality 70, max 1200px wide.
  Future<String> _compressImage(String sourcePath) async {
    final bytes = await File(sourcePath).readAsBytes();
    final decoded = img.decodeImage(bytes);
    if (decoded == null)
      throw const OcrException(message: 'تصویر پڑھنے میں خرابی');

    // Resize if larger than 1200px wide
    final resized =
        decoded.width > 1200 ? img.copyResize(decoded, width: 1200) : decoded;

    final compressed = img.encodeJpg(resized, quality: 70);

    final dir = await getTemporaryDirectory();
    final outPath =
        '${dir.path}/compressed_${DateTime.now().millisecondsSinceEpoch}.jpg';
    await File(outPath).writeAsBytes(compressed);
    return outPath;
  }

  void dispose() => _recognizer.close();
}
