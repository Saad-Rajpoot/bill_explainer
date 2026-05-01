import 'package:supabase_flutter/supabase_flutter.dart' hide AuthException;
import '../../../core/errors/exceptions.dart';

/// Remote datasource: Supabase FREE tier operations.
/// Only syncs summary data — images stay local.
class SupabaseDatasource {
  final SupabaseClient _client;
  SupabaseDatasource(this._client);

  // ─── Bills sync ───────────────────────────────────────────────────

  /// Push bill summary to Supabase bills table.
  /// Returns the Supabase-generated UUID for this record.
  Future<String> syncBill(Map<String, dynamic> billData) async {
    try {
      final response = await _client
          .from('bills')
          .insert(billData)
          .select('id')
          .single();
      return response['id'] as String;
    } on PostgrestException catch (e) {
      throw ServerException(message: e.message);
    }
  }

  /// Submit a crowdsourced tariff overcharge report.
  Future<void> submitTariffReport(Map<String, dynamic> reportData) async {
    try {
      await _client.from('tariff_reports').insert(reportData);
    } on PostgrestException catch (e) {
      throw ServerException(message: e.message);
    }
  }

  // ─── Auth ─────────────────────────────────────────────────────────

  /// Sign in anonymously for data sync without requiring account creation.
  Future<void> signInAnonymously() async {
    try {
      await _client.auth.signInAnonymously();
    } catch (e) {
      throw AuthException(message: e.toString());
    }
  }

  User? get currentUser => _client.auth.currentUser;
  bool get isAuthenticated => currentUser != null;

  // ─── Tariff Data ──────────────────────────────────────────────────

  /// Fetches the latest FC Adjustment value for a DISCO.
  /// Used to improve tariff validation accuracy.
  Future<double?> getLatestFcAdjustment(String discoName) async {
    try {
      final response = await _client
          .from('tariff_updates')
          .select('fc_per_unit')
          .eq('disco_name', discoName)
          .order('created_at', ascending: false)
          .limit(1)
          .maybeSingle();
      return response?['fc_per_unit'] as double?;
    } catch (_) {
      return null; // Fail silently — use hardcoded default
    }
  }
}
