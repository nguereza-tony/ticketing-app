import 'package:flutter/material.dart';
import 'package:platine_flutter/platine_flutter.dart';
import 'package:ticketing/helpers/app_helper.dart';
import 'package:ticketing/i18n/translations.g.dart';
import 'package:ticketing/screens/ticket/ticket_verification_screen.dart';
import 'package:ticketing/services/ticket_service.dart';

class TicketValidateScreen extends StatefulWidget {
  const TicketValidateScreen({super.key});

  @override
  State<TicketValidateScreen> createState() => _TicketValidateScreenState();
}

class _TicketValidateScreenState extends State<TicketValidateScreen> {
  final TicketService _ticketService = TicketService();

  @override
  void initState() {
    super.initState();
  }

  @override
  Scaffold build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: getAppHeader(title: t.titles.ticketVerification),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                    _ticketService.info(code).then((ticket) {
                      if (ticket != null) {
                        switchToScreen(
                          context,
                          TicketVerificationScreen(ticket: ticket, uuid: code),
                        );
                      }
                    });
                  },
                  backgroundColor: kButtonBgColor,
                  textColor: kButtonColor,
                  text: t.buttons.ticketScan,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
