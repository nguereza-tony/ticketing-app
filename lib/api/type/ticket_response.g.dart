// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketResponse _$TicketResponseFromJson(Map<String, dynamic> json) =>
    TicketResponse(
      page: (json['page'] as num).toInt(),
      totalPage: (json['total_page'] as num).toInt(),
      items: (json['items'] as List<dynamic>)
          .map((e) => Ticket.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TicketResponseToJson(TicketResponse instance) =>
    <String, dynamic>{
      'page': instance.page,
      'total_page': instance.totalPage,
      'items': instance.items.map((e) => e.toJson()).toList(),
    };
