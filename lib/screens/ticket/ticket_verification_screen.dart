import 'package:flutter/material.dart';
import 'package:platine_flutter/platine_flutter.dart';
import 'package:ticketing/components/ticket_item.dart';
import 'package:ticketing/i18n/translations.g.dart';
import 'package:ticketing/models/ticket.dart';
import 'package:ticketing/screens/ticket/ticket_validate_screen.dart';
import 'package:ticketing/services/ticket_service.dart';

class TicketVerificationScreen extends StatefulWidget {
  Ticket ticket;
  String uuid;
  TicketVerificationScreen({
    super.key,
    required this.ticket,
    required this.uuid,
  });

  @override
  State<TicketVerificationScreen> createState() =>
      _TicketVerificationScreenState();
}

class _TicketVerificationScreenState extends State<TicketVerificationScreen> {
  final _ticketService = TicketService();

  bool isLoading = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: getAppHeader(title: t.titles.ticketVerification),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TicketItem(ticket: widget.ticket),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 1),
                child: SizedBox(
                  height: 48,
                  width: double.infinity,
                  child: isLoading
                      ? const LoadingButton()
                      : DefaultButton(
                          onSubmit: () async {
                            // Enable loading
                            changeLoading(true);

                            _ticketService.validate(widget.uuid).then((ticket) {
                              // Disabled loading
                              changeLoading(false);

                              if (ticket != null) {
                                NotificationHelper.success(
                                  t.messages.ticketValidatedSuccess(
                                    code: widget.ticket.code,
                                  ),
                                  null,
                                  5,
                                );

                                switchToScreen(
                                  context,
                                  const TicketValidateScreen(),
                                );
                              }
                            });
                          },
                          backgroundColor: kButtonBgColor,
                          textColor: kButtonColor,
                          text: t.buttons.check,
                        ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void changeLoading(bool state) {
    setState(() {
      isLoading = state;
    });
  }
}
