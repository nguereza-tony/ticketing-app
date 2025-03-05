import 'package:personal_budget/api/api_endpoints.dart';
import 'package:personal_budget/api/api_error_codes.dart';
import 'package:personal_budget/constants/app_config.dart';
import 'package:platine_flutter/platine_flutter.dart';
import 'package:rest_api_client/rest_api_client.dart';

class ApiClient {
  Future<RestApiClient> create() async {
    var api = await RestClient().build(
      apiBaseURL: apiBaseURL,
      refreshTokenEndpoint: ApiEndpoints.authToken,
      apiTokenResponseCode: apiTokenResponseCode,
      apiErrorCodes: apiErrorCodes,
    );

    return api;
  }
}
