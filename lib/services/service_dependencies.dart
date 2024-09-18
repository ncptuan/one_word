import 'package:get_it/get_it.dart';

import '../core/core.dart';
import '../utility/utility.dart';
import 'services.dart';

class ServiceDependencies {
  static void init(GetIt injector) {
    var config = injector.get<AppConfiguration>();
    // injector.registerLazySingleton<RestUtils>(() => RestUtils(config.baseUrl),
    //     instanceName: 'MAIN');
    injector.registerLazySingleton<RestUtils>(
        () => RestUtils(config.dictionaryApiUrl));
    injector.registerLazySingleton<DashboardService>(() => DashboardService());
    injector.registerLazySingleton<DictionaryApiService>(
        () => DictionaryApiService());
    ResponseDependencies.init(injector);
  }
}
