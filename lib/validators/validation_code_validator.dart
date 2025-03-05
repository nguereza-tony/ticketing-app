import 'package:fast_validator/fast_validator.dart';
import 'package:ticketing/i18n/translations.g.dart';
import 'package:platine_flutter/platine_flutter.dart';
import 'package:platine_flutter/platine_i18n.dart' as pft;

class ValidationCodeValidator extends BaseValidator {
  static String? code(String? value) {
    return BaseValidator.addField(
      t.fields.code,
      value,
      [
        FastRequiredValidation(customMessage: pft.t.errors.validator.required),
        FastExactLengthValidation(
          length: 6,
          customMessage: pft.t.errors.validator.exactLength(length: 6),
        ),
        FastDigitsOnlyValidation(customMessage: pft.t.errors.validator.number),
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
