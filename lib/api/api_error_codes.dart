import 'package:personal_budget/i18n/translations.g.dart';
import 'package:platine_flutter/platine_i18n.dart' as pft;

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
  409104: t.errors.api.budgetDateOverlapped,
  400102: t.errors.api.incorrectUserPin,
  400104: t.errors.api.userPinAlreadySet,
  400105: t.errors.api.userPinNotSet,
  400106: t.errors.api.userAccountAlreadyValidated,
  400107: t.errors.api.userBalanceNotEnough,
  403101: t.errors.api.userBalanceNegative,
};
