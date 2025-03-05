import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  int id;
  String username;
  String lastname;
  String firstname;
  String email;
  String? lastLogin;
  List<String> permissions = [];

  User({
    required this.id,
    required this.username,
    required this.lastname,
    required this.firstname,
    required this.email,
    required this.permissions,
    this.lastLogin,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    if (json.containsKey('permissions') == false) {
      json['permissions'] = [];
    }

    return _$UserFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
