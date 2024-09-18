import '../core/core.dart';
import '../dependencies.dart';
import '../preference/user_preference.dart';
import '../utility/app_configuration.dart';

abstract class BaseService {
  final rest = AppDependencies.injector.get<RestUtils>();
  final config = AppDependencies.injector.get<AppConfiguration>();
  final preference = AppDependencies.injector.get<UserPreference>();
}
