import 'package:ticketing/api/api_client.dart';
import 'package:ticketing/api/api_endpoints.dart';
import 'package:ticketing/api/type/login_response.dart';
import 'package:ticketing/models/user.dart';
import 'package:ticketing/models/user_basic_info.dart';

class UserService {
  Future<LoginResponse?> login({
    required String username,
    required String password,
  }) async {
    var api = await ApiClient().create();
    final response = await api.post(ApiEndpoints.userLogin, data: {
      'username': username,
      'password': password,
    });
    if (response.isSuccess) {
      return LoginResponse.fromJson(response.data['data']);
    }

    return null;
  }

  Future<bool> editUser({
    required String username,
    required String email,
    required String lastname,
    required String firstname,
  }) async {
    var api = await ApiClient().create();
    final response = await api.put(ApiEndpoints.userEdit, data: {
      'username': username,
      'email': email,
      'lastname': lastname,
      'firstname': firstname,
    });

    return response.isSuccess;
  }

  Future<bool> editPassword({
    required String currentPassword,
    required String password,
    required String confirmPassword,
  }) async {
    var api = await ApiClient().create();
    final response = await api.put(ApiEndpoints.editPassword, data: {
      'current': currentPassword,
      'password': password,
      'confirm': confirmPassword,
    });

    return response.isSuccess;
  }

  Future<bool> resetPassword({
    required String code,
    required String email,
    required String password,
    required String confirmPassword,
  }) async {
    var api = await ApiClient().create();
    final response = await api.post(ApiEndpoints.resetPassword, data: {
      'email': email,
      'code': code,
      'password': password,
      'confirm_password': confirmPassword,
    });

    return response.isSuccess;
  }

  Future<User?> profile() async {
    var api = await ApiClient().create();
    final response = await api.get(ApiEndpoints.userProfile);
    if (response.isSuccess) {
      return User.fromJson(response.data['data']);
    }

    return null;
  }

  Future<UserBasicInfo?> basicInfo() async {
    var api = await ApiClient().create();
    final response = await api.get(ApiEndpoints.userBasicInfo);
    if (response.isSuccess) {
      return UserBasicInfo.fromJson(response.data['data']);
    }

    return null;
  }
}
