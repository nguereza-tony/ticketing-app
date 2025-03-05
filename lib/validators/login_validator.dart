import 'package:fast_validator/fast_validator.dart';
import 'package:platine_flutter/platine_flutter.dart';
import 'package:platine_flutter/platine_i18n.dart' as pft;

class LoginValidator extends BaseValidator {
  static String? username(String? value) {
    return BaseValidator.addField(
      pft.t.fields.username,
      value,
      [
        FastRequiredValidation(customMessage: pft.t.errors.validator.required),
        FastMinLengthValidation(
          minLength: 3,
          customMessage: pft.t.errors.validator.minLength(length: 3),
        ),
        FastMaxLengthValidation(
          maxLength: 30,
          customMessage: pft.t.errors.validator.maxLength(length: 30),
        ),
      ],
    );
  }

  static String? password(String? value) {
    return BaseValidator.addField(
      pft.t.fields.password,
      value,
      [
        FastRequiredValidation(),
        FastPasswordValidation(
          //   lowercase: true,
          minLength: 8,
          //  number: true,
          //  specialCharacter: true,
          //  uppercase: true,
          generalInvalidMessage: pft.t.errors.validator.password,
          minLengthMessage: pft.t.errors.validator.passwordMinLength(length: 8),
        ),
      ],
    );
  }
}
