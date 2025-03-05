import 'package:ticketing/api/api_client.dart';
import 'package:ticketing/api/api_endpoints.dart';
import 'package:ticketing/helpers/app_helper.dart';

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
      ValidationCodeType.passwordReset: 'P',
    };
  }
}
