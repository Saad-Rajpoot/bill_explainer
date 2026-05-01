import 'package:isar/isar.dart';

part 'user_settings_model.g.dart';

@collection
class UserSettingsModel {
  Id id = Isar.autoIncrement;
  bool darkMode = false;
  String companyName = 'LESCO';
  bool isPremium = false;

  UserSettingsModel();

  factory UserSettingsModel.defaults() {
    return UserSettingsModel()
      ..id = 1
      ..darkMode = false
      ..companyName = 'LESCO'
      ..isPremium = false;
  }
}
