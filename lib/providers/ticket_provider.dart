import 'package:flutter/foundation.dart';
import 'package:ticketing/models/ticket.dart';
import 'package:ticketing/services/ticket_service.dart';

class TicketProvider extends ChangeNotifier {
  final _ticketService = TicketService();
  bool isLoading = false;
  List<Ticket> _items = [];

  int currentPage = 1;
  int totalPage = 1;

  /// Getters & Setters
  List<Ticket> get items => _items;

  /// Methods
  Future<void> getTickets(Map<String, dynamic> filters) async {
    isLoading = true;
    notifyListeners();
    final result = await _ticketService.tickets(filters);
    _items = result.items;
    totalPage = result.totalPage;
    currentPage = result.page;
    isLoading = false;
    notifyListeners();
  }
}
