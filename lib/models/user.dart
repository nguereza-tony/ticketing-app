import 'package:json_annotation/json_annotation.dart';
import 'package:personal_budget/models/currency.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  int id;
  String username;
  String lastname;
  String firstname;
  String email;
  double balance = 0;
  Currency? currency;
  bool pinSet = false;
  List<String> permissions = [];

  User({
    required this.id,
    required this.username,
    required this.lastname,
    required this.firstname,
    required this.email,
    required this.pinSet,
    required this.currency,
    this.balance = 0,
    required this.permissions,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    if (json.containsKey('permissions') == false) {
      json['permissions'] = [];
    }
    if (json.containsKey('pin_set') == false) {
      json['pin_set'] = false;
    }

    if (json.containsKey('balance') == false) {
      json['balance'] = 0;
    }

    if (json.containsKey('currency') == false) {
      json['currency'] = null;
    }

    return _$UserFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
