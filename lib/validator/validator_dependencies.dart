import '../validator/register_user_validator.dart';
import 'package:get_it/get_it.dart';

import 'validator.dart';

class ValidatorDependencies {
  static void init(GetIt injector) {
    injector.registerFactory(() => LoginValidator());
    injector.registerFactory(() => ForgetPasswordValidator());
    injector.registerFactory(() => OTPValidator());
    injector.registerFactory(() => ResetPasswordValidator());
    injector.registerFactory(() => RegisterUserValidator());
    injector.registerFactory(() => UpdateProductValidator());
  }
}
