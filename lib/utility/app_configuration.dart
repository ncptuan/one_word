import '../dependencies.dart';
import '../preference/user_preference.dart';
import 'package:global_configs/global_configs.dart';

class AppConfiguration {
  Future init() async {
    final preference = AppDependencies.injector.get<UserPreference>();
    await GlobalConfigs().loadJsonFromdir('assets/cfg/app_api_config.json');
  }

  int getInt(String key) {
    var num = GlobalConfigs().get(key);
    if (num is int) return num;
    return num?.toInt();
  }

  String getString(String key) {
    return GlobalConfigs().get<String?>(key) ?? '';
  }

  int get timeLimit => getInt('timeLimit');
  String get dictionaryApiUrl => getString('dictionary_api_url');
  String get baseImageUrl => getString('base_image_url');
}
