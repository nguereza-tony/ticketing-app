import 'package:ticketing/api/api_client.dart';
import 'package:ticketing/api/api_endpoints.dart';
import 'package:ticketing/api/type/ticket_response.dart';
import 'package:ticketing/models/ticket.dart';

class TicketService {
  Future<TicketResponse> tickets(Map<String, dynamic> filters) async {
    var api = await ApiClient().create();

    final response = await api.get(
      ApiEndpoints.ticketList,
      queryParameters: filters,
    );

    List<Ticket> items = [];
    if (response.isSuccess) {
      List results = response.data['data'];
      for (var el in results) {
        items.add(Ticket.fromJson(el));
      }
      var pagination = response.data['pagination'] ?? {};
      return TicketResponse(
        page: pagination['page'] ?? 0,
        totalPage: pagination['total_page'] ?? 0,
        items: items,
      );
    }

    return TicketResponse(page: 0, totalPage: 0, items: []);
  }

  Future<Ticket?> info(String uuid) async {
    var api = await ApiClient().create();

    final response = await api.get(
      '${ApiEndpoints.ticketInfo}/$uuid',
    );
    if (response.isSuccess) {
      return Ticket.fromJson(response.data['data']);
    }

    return null;
  }

  Future<Ticket?> validate(String uuid) async {
    var api = await ApiClient().create();

    final response = await api.post(
      '${ApiEndpoints.ticketValidation}/$uuid',
    );
    if (response.isSuccess) {
      return Ticket.fromJson(response.data['data']);
    }

    return null;
  }
}
