import 'package:shared_preferences/shared_preferences.dart';
import 'package:shop_app/model/users.dart';

enum PrefKeys { id, fullName, email, gender, token, isLoggedIn, isBoardingIn }

class SharedPrefController {
  static SharedPrefController? _instance;
  late SharedPreferences _sharedPreferences;
  SharedPrefController._();

  factory SharedPrefController() {
    return _instance ??= SharedPrefController._();
  }
  Future<void> initSharedPref() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  Future<void> save({required User user}) async {
    await _sharedPreferences.setBool(PrefKeys.isLoggedIn.name, true);
    await _sharedPreferences.setInt(PrefKeys.id.name, user.id);
    await _sharedPreferences.setString(PrefKeys.fullName.name, user.fullName);
    await _sharedPreferences.setString(PrefKeys.email.name, user.email);
    await _sharedPreferences.setString(PrefKeys.gender.name, user.gender);
    await _sharedPreferences.setString(
        PrefKeys.token.name, 'Bearer ${user.token}');
  }

  Future<void> saveIsBoarding() async {
    await _sharedPreferences.setBool(PrefKeys.isBoardingIn.name, true);
  }

  Future<void> saveLanguage(String langCode) async {
    await _sharedPreferences.setString("lang", langCode);
  }

  String get language => _sharedPreferences.getString("lang") ?? '';

  Future<bool> clear() async => _sharedPreferences.clear();
  bool get loggedIn =>
      _sharedPreferences.getBool(PrefKeys.isLoggedIn.name) ?? false;

  bool get boardingIn =>
      _sharedPreferences.getBool(PrefKeys.isBoardingIn.name) ?? false;

  String get token => _sharedPreferences.getString(PrefKeys.token.name) ?? '';

  String get name => _sharedPreferences.getString(PrefKeys.fullName.name) ?? '';
}
