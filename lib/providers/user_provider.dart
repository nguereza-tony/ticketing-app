import 'package:flutter/foundation.dart';
import 'package:ticketing/models/user.dart';
import 'package:ticketing/models/user_basic_info.dart';
import 'package:ticketing/services/user_service.dart';
import 'package:platine_flutter/platine_flutter.dart';

class UserProvider extends ChangeNotifier {
  final _userService = UserService();
  bool profileLoading = false;
  bool loginLoading = false;
  bool basicInfoLoading = false;
  bool isLogged = false;
  User? _user;
  UserBasicInfo? _userBasicInfo;
  String? _token;
  String? _refreshToken;

  /// Getters & Setters
  User? get user => _user;
  UserBasicInfo? get userBasicInfo => _userBasicInfo;
  String? get token => _token;
  String? get refreshToken => _refreshToken;

  /// Methods
  Future<void> login({
    required String username,
    required String password,
  }) async {
    loginLoading = true;
    notifyListeners();

    final result = await _userService.login(
      username: username,
      password: password,
    );
    _user = result?.user;
    _token = result?.token;
    _refreshToken = result?.refreshToken;
    loginLoading = false;
    notifyListeners();
  }

  Future<void> getUserProfile() async {
    profileLoading = true;
    notifyListeners();

    final result = await _userService.profile();
    _user = result;
    profileLoading = false;
    notifyListeners();
  }

  Future<void> getUserBasicInfo() async {
    basicInfoLoading = true;
    notifyListeners();

    final result = await _userService.basicInfo();
    _userBasicInfo = result;
    basicInfoLoading = false;
    notifyListeners();
  }

  Future<void> setLoginStatus() async {
    isLogged = await AuthHelper.isLogged();
    notifyListeners();
  }

  Future<void> logout() async {
    await AuthHelper.logout();
    isLogged = false;
    notifyListeners();
  }
}
