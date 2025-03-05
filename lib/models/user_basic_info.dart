import 'package:json_annotation/json_annotation.dart';
import 'package:ticketing/models/ticket.dart';
import 'package:ticketing/models/user.dart';

part 'user_basic_info.g.dart';

@JsonSerializable()
class UserBasicInfo {
  User user;
  List<Ticket> tickets = [];

  UserBasicInfo({
    required this.user,
    required this.tickets,
  });

  factory UserBasicInfo.fromJson(Map<String, dynamic> json) {
    if (json.containsKey('transactions') == false) {
      json['transactions'] = [];
    }
    return _$UserBasicInfoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserBasicInfoToJson(this);
}
