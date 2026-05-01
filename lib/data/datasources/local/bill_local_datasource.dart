import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import '../../models/bill_model.dart';
import '../../models/user_settings_model.dart';
import '../../../core/errors/exceptions.dart';

/// Manages the Isar database instance.
/// Opens the schema once and reuses the instance across the app.
class IsarService {
  static Isar? _instance;

  static Future<Isar> open() async {
    if (_instance != null && _instance!.isOpen) return _instance!;
    final dir = await getApplicationDocumentsDirectory();
    _instance = await Isar.open(
      [BillModelSchema, UserSettingsModelSchema],
      directory: dir.path,
      name: 'bijli_samjho',
    );
    return _instance!;
  }

  static Isar get instance {
    if (_instance == null || !_instance!.isOpen) {
      throw const CacheException(
          message: 'Isar not initialized. Call IsarService.open() first.');
    }
    return _instance!;
  }
}

/// Local datasource: bill CRUD via Isar.
class BillLocalDatasource {
  final Isar _isar;
  BillLocalDatasource(this._isar);

  Future<List<BillModel>> getAllBills() async {
    return _isar.billModels.where().sortByScannedAtDesc().findAll();
  }

  Future<BillModel?> getBillById(int id) async {
    return _isar.billModels.get(id);
  }

  Future<int> saveBill(BillModel model) async {
    return _isar.writeTxn(() async {
      return _isar.billModels.put(model);
    });
  }

  Future<void> deleteBill(int id) async {
    await _isar.writeTxn(() async {
      await _isar.billModels.delete(id);
    });
  }

  Future<List<BillModel>> getUnsyncedBills() async {
    return _isar.billModels.filter().supabaseIdIsNull().findAll();
  }

  Future<void> markAsSynced(int id, String supabaseId) async {
    await _isar.writeTxn(() async {
      final model = await _isar.billModels.get(id);
      if (model != null) {
        model.supabaseId = supabaseId;
        await _isar.billModels.put(model);
      }
    });
  }
}

/// Local datasource: UserSettings via Isar.
class SettingsDatasource {
  final Isar _isar;
  SettingsDatasource(this._isar);

  Future<UserSettingsModel> getSettings() async {
    final settings = await _isar.userSettingsModels.get(1);
    if (settings == null) {
      // First run — create defaults
      final defaults = UserSettingsModel.defaults();
      await _isar.writeTxn(() async {
        await _isar.userSettingsModels.put(defaults);
      });
      return defaults;
    }
    return settings;
  }

  Future<void> saveSettings(UserSettingsModel settings) async {
    settings.id = 1; // Ensure singleton
    await _isar.writeTxn(() async {
      await _isar.userSettingsModels.put(settings);
    });
  }

  Future<void> updateCompanyName(String company) async {
    final s = await getSettings();
    s.companyName = company;
    await saveSettings(s);
  }

  Future<void> updateDarkMode(bool value) async {
    final s = await getSettings();
    s.darkMode = value;
    await saveSettings(s);
  }

  Future<void> updatePremium(bool value) async {
    final s = await getSettings();
    s.isPremium = value;
    await saveSettings(s);
  }
}
