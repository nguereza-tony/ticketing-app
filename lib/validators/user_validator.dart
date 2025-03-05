import 'package:fast_validator/fast_validator.dart';
import 'package:platine_flutter/platine_flutter.dart';
import 'package:platine_flutter/platine_i18n.dart' as pft;

class UserValidator extends BaseValidator {
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
        FastAlphaNumericOnlyValidation(
            customMessage: pft.t.errors.validator.alphaNumeric),
      ],
    );
  }

  static String? email(String? value) {
    return BaseValidator.addField(
      pft.t.fields.email,
      value,
      [
        FastRequiredValidation(customMessage: pft.t.errors.validator.required),
        FastEmailValidation(customMessage: pft.t.errors.validator.email),
        FastMaxLengthValidation(
          maxLength: 100,
          customMessage: pft.t.errors.validator.maxLength(length: 100),
        ),
      ],
    );
  }

  static String? lastname(String? value) {
    return BaseValidator.addField(
      pft.t.fields.lastname,
      value,
      [
        FastRequiredValidation(customMessage: pft.t.errors.validator.required),
        FastMinLengthValidation(
          minLength: 3,
          customMessage: pft.t.errors.validator.minLength(length: 3),
        ),
        FastMaxLengthValidation(
          maxLength: 50,
          customMessage: pft.t.errors.validator.maxLength(length: 50),
        ),
      ],
    );
  }

  static String? firstname(String? value) {
    return BaseValidator.addField(
      pft.t.fields.firstname,
      value,
      [
        FastRequiredValidation(customMessage: pft.t.errors.validator.required),
        FastMinLengthValidation(
          minLength: 3,
          customMessage: pft.t.errors.validator.minLength(length: 3),
        ),
        FastMaxLengthValidation(
          maxLength: 50,
          customMessage: pft.t.errors.validator.maxLength(length: 50),
        ),
      ],
    );
  }

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
