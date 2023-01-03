import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  // store value

  Future<void> setValue(String key, dynamic value) async {
    final prefs = await SharedPreferences.getInstance();
    if (value is bool) {
      prefs.setBool(key, value);
    } else if (value is int) {
      prefs.setInt(key, value);
    } else if (value is double) {
      prefs.setDouble(key, value);
    } else if (value is String) {
      prefs.setString(key, value);
    }
  }

  // retrieve value

  Future<bool> getBool(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(key) ?? false;
  }

  Future<int> getInt(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt(key) ?? 0;
  }

  Future<double> getDouble(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getDouble(key) ?? 0.0;
  }

  Future<String> getString(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(key) ?? 'default';
  }

  // use the get methods to retrieve multiple values at once using the getValues method:

  Future<Map<String, dynamic>> getValues(List<String> keys) async {
    final prefs = await SharedPreferences.getInstance();
    final values = <String, dynamic>{};
    for (String key in keys) {
      final value = prefs.get(key);
      if (value != null) {
        values[key] = value;
      }
    }
    return values;
  }
}
