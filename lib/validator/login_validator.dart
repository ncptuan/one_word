import 'package:basic_utils/basic_utils.dart';

import '../validator/base_validator.dart';

class LoginValidator extends BaseValidator {
  String? validateUsername(Object? value,
      {String? errorMessage, String? fieldName}) {
    final String? validateRequire = super.requiredValidate(value,
        errorMessage: errorMessage, fieldName: fieldName);
    final String? validateEmail = super.validateEmail(
      value as String,
    );
    return validateRequire ?? validateEmail;
  }

  String? test(String? value) {
    return "";
  }
}
