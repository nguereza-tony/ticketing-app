// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ticket _$TicketFromJson(Map<String, dynamic> json) => Ticket(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      code: json['code'] as String,
      category: Category.fromJson(json['category'] as Map<String, dynamic>),
      status: json['status'] as String,
      description: json['description'] as String?,
      validator: json['validator'] == null
          ? null
          : User.fromJson(json['validator'] as Map<String, dynamic>),
    )..validationDate = json['validation_date'] as String?;

Map<String, dynamic> _$TicketToJson(Ticket instance) => <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'name': instance.name,
      'status': instance.status,
      'description': instance.description,
      'validation_date': instance.validationDate,
      'validator': instance.validator?.toJson(),
      'category': instance.category.toJson(),
    };
