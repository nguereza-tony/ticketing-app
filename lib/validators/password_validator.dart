import 'package:fast_validator/fast_validator.dart';
import 'package:platine_flutter/platine_flutter.dart';
import 'package:platine_flutter/platine_i18n.dart' as pft;

class PasswordValidator extends BaseValidator {
  static String? password(String? value) {
    return BaseValidator.addField(
      pft.t.fields.password,
      value,
      [
        FastRequiredValidation(customMessage: pft.t.errors.validator.required),
        FastPasswordValidation(
          lowercase: true,
          minLength: 8,
          number: true,
          specialCharacter: true,
          uppercase: true,
          generalInvalidMessage: pft.t.errors.validator.password,
          lowercaseMessage: pft.t.errors.validator.passwordLowercase,
          uppercaseMessage: pft.t.errors.validator.passwordUppercase,
          numberMessage: pft.t.errors.validator.passwordNumbers,
          specialCharacterMessage: pft.t.errors.validator.passwordSpecialChars,
          minLengthMessage: pft.t.errors.validator.passwordMinLength(length: 8),
        ),
      ],
    );
  }

  static String? confirmPassword(String? value, String? matchValue) {
    return BaseValidator.addField(
      pft.t.fields.confirmPassword,
      value,
      [
        FastRequiredValidation(customMessage: pft.t.errors.validator.required),
        FastMatchesValidator(
          field: pft.t.fields.password,
          value: matchValue,
          errorMessage:
              pft.t.errors.validator.matches(field: pft.t.fields.password),
        ),
      ],
    );
  }
}
