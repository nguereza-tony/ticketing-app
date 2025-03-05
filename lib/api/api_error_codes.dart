import 'package:platine_flutter/platine_i18n.dart' as pft;
import 'package:ticketing/i18n/translations.g.dart';

var apiErrorCodes = {
  400101: pft.t.errors.api.incorrectUserPassword,
  400103: pft.t.errors.api.incorrectVerificationCode,
  400108: pft.t.errors.api.auth,
  403102: pft.t.errors.api.userIsLocked,
  404101: pft.t.errors.api.userNotFound,
  404102: pft.t.errors.api.userEmailNotFound,
  404103: pft.t.errors.api.recordNotFound,
  404104: pft.t.errors.api.userRefreshTokenNotFound,
  409101: pft.t.errors.api.usernameAlreadyExist,
  409102: pft.t.errors.api.userEmailAlreadyExist,
  409103: pft.t.errors.api.userAccountAlreadyExist,
  500100: pft.t.errors.api.internalServerError,
  400104: t.errors.api.ticketAlreadyValidated,
  404105: t.errors.api.ticketNotFound,
};
