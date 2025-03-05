import 'package:json_annotation/json_annotation.dart';
import 'package:ticketing/models/ticket.dart';

part 'ticket_response.g.dart';

@JsonSerializable()
class TicketResponse {
  int page;
  int totalPage;
  List<Ticket> items;
  TicketResponse({
    required this.page,
    required this.totalPage,
    required this.items,
  });

  factory TicketResponse.fromJson(Map<String, dynamic> json) {
    return _$TicketResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TicketResponseToJson(this);
}
