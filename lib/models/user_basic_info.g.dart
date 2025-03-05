// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_basic_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserBasicInfo _$UserBasicInfoFromJson(Map<String, dynamic> json) =>
    UserBasicInfo(
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      tickets: (json['tickets'] as List<dynamic>)
          .map((e) => Ticket.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UserBasicInfoToJson(UserBasicInfo instance) =>
    <String, dynamic>{
      'user': instance.user.toJson(),
      'tickets': instance.tickets.map((e) => e.toJson()).toList(),
    };
