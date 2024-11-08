import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  static SharedPrefs? _instance;
  static SharedPreferences? _prefs;

  static Future<SharedPrefs> getInstance() async {
    _prefs ??= await SharedPreferences.getInstance();

    return _instance ??= SharedPrefs();
  }

  // bool
  Future<bool> putBool(String key, {required bool value}) => 
    _prefs!.setBool(key, value);

  bool? getBool(String key) => _prefs!.getBool(key);

  // double
  Future<bool> putDouble(String key, double value) =>
    _prefs!.setDouble(key, value);

  double? getDouble(String key) => _prefs!.getDouble(key);

  // int
  Future<bool> putInt(String key, int value) => 
    _prefs!.setInt(key, value);

  int? getInt(String key) => _prefs!.getInt(key);

  // string
  Future<bool> putString(String key, String value) =>
    _prefs!.setString(key, value);

  String? getString(String key) => _prefs!.getString(key);

  // stringList
  Future<bool> putStringList(String key, List<String> value) =>
    _prefs!.setStringList(key, value);

  List<String>? getStringList(String key) => _prefs!.getStringList(key);

  bool isKeyExists(String key) => _prefs!.containsKey(key);

  Future<bool> clearKey(String key) => _prefs!.remove(key);

  Future<bool> clearAll() => _prefs!.clear();
}