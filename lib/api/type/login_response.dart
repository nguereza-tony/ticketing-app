import 'package:json_annotation/json_annotation.dart';
import 'package:personal_budget/models/user.dart';

part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  User user;
  String token;
  String refreshToken;
  int refreshTokenExpire;
  LoginResponse({
    required this.user,
    required this.token,
    required this.refreshToken,
    required this.refreshTokenExpire,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return _$LoginResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}
