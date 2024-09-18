import 'package:get_it/get_it.dart';

// import 'bloc/bloc_dependencies.dart';
// import 'business/business_dependencies.dart';
// import 'model/model_dependencies.dart';
// import 'page/page_dependencies.dart';
import 'page/bloc/bloc_dependencies.dart';
import 'preference/user_preference.dart';
import 'route/route.dart';
import 'services/services.dart';
import 'utility/utility.dart';
import 'validator/validator.dart';

class AppDependencies {
  AppDependencies._();
  // static GetIt get a => GetIt.I;

  static final GetIt injector = GetIt.instance;

  static Future initialize() async {
    injector.registerLazySingleton<AppConfiguration>(() => AppConfiguration());
    injector.registerLazySingleton<UserPreference>(() => UserPreference());
    injector.registerLazySingleton<AuthenticationUtility>(
        () => AuthenticationUtility());
    injector.registerLazySingleton<AppRouter>(() => AppRouter());
    injector.registerLazySingleton<RouteUtils>(() => RouteUtils());
    BlocDependencies.init(injector);
    ServiceDependencies.init(injector);
    ValidatorDependencies.init(injector);

    await injector.get<AppConfiguration>().init();
  }
}
