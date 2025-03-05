import 'package:json_annotation/json_annotation.dart';
import 'package:ticketing/models/category.dart';
import 'package:ticketing/models/user.dart';

part 'ticket.g.dart';

@JsonSerializable()
class Ticket {
  int id;
  String code;
  String name;
  String status;
  String? description;
  String? validationDate;
  User? validator;
  Category category;

  Ticket({
    required this.id,
    required this.name,
    required this.code,
    required this.category,
    required this.status,
    this.description,
    this.validator,
  });

  factory Ticket.fromJson(Map<String, dynamic> json) {
    return _$TicketFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TicketToJson(this);
}
