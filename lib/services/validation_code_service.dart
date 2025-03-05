import 'package:personal_budget/api/api_client.dart';
import 'package:personal_budget/api/api_endpoints.dart';
import 'package:personal_budget/helpers/app_helper.dart';

class ValidationCodeService {
  Future<bool> sendCode(String email, ValidationCodeType type) async {
    var types = _getValidationTypes();
    var api = await ApiClient().create();

    final response = await api.post(
      ApiEndpoints.userValidationCodeSend,
      data: {
        'type': types[type],
        'email': email,
      },
    );
    return response.isSuccess;
  }

  Future<bool> confirmCode(
      String email, String code, ValidationCodeType type) async {
    var types = _getValidationTypes();
    var api = await ApiClient().create();

    final response = await api.post(
      ApiEndpoints.userValidationCodeConfirm,
      data: {
        'type': types[type],
        'email': email,
        'code': code,
      },
    );
    return response.isSuccess;
  }

  Map<ValidationCodeType, String> _getValidationTypes() {
    return {
      ValidationCodeType.userCreate: 'C',
      ValidationCodeType.passwordReset: 'P',
      ValidationCodeType.pinReset: 'I',
    };
  }
}
