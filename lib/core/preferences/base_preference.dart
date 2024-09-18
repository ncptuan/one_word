import 'package:encrypted_shared_preferences/encrypted_shared_preferences.dart';

import '../../utility/utility.dart';

abstract class BasePreference {
  Future getLocal(String key, {bool isDateTime = false}) async {
    final prefs = EncryptedSharedPreferences();
    if (isDateTime) {
      return ConvertUtility.convertPreferenceDate(await prefs.getString(key));
    }
    return prefs.getString(key);
  }

  Future setLocal(String key, Object? value) async {
    final prefs = EncryptedSharedPreferences();
    if (value == null) {
      final pref = await prefs.getInstance();
      if (pref.containsKey(key)) await pref.remove(key);
      return;
    } else if (value is DateTime) {
      await prefs.setString(key, ConvertUtility.formatPreferenceDate(value));
    } else if (value is String) {
      await prefs.setString(key, value);
    }
  }

  Future clearLocal() async {
    final prefs = EncryptedSharedPreferences();
    await prefs.clear();
  }
}
