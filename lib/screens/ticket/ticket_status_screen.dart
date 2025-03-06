import 'package:flutter/material.dart';
import 'package:platine_flutter/platine_flutter.dart';
import 'package:provider/provider.dart';
import 'package:ticketing/components/ticket_item.dart';
import 'package:ticketing/helpers/app_helper.dart';
import 'package:ticketing/i18n/translations.g.dart';
import 'package:ticketing/models/ticket.dart';
import 'package:ticketing/providers/ticket_provider.dart';

class TicketStatusScreen extends StatefulWidget {
  const TicketStatusScreen({super.key});

  @override
  State<TicketStatusScreen> createState() => _TicketStatusScreenState();
}

class _TicketStatusScreenState extends State<TicketStatusScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Scaffold build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: getAppHeader(title: t.titles.ticketStatusCheck),
      body: Consumer<TicketProvider>(builder: (context, ticketProvider, _) {
        if (ticketProvider.isLoadingTicket) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        Ticket? ticket = ticketProvider.ticket;

        return SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (ticket != null) ...[TicketItem(ticket: ticket)],
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SizedBox(
                  height: 48,
                  width: double.infinity,
                  child: DefaultButton(
                    onSubmit: () async {
                      var code = await scanBarcode(mounted);
                      if (code.isEmpty) {
                        return;
                      }

                      // Handle
                      await ticketProvider.getTicketInfo(code);
                    },
                    backgroundColor: kButtonBgColor,
                    textColor: kButtonColor,
                    text: t.buttons.ticketScan,
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
