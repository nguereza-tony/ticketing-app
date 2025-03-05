import 'package:flutter/material.dart';
import 'package:platine_flutter/platine_flutter.dart';
import 'package:ticketing/helpers/app_helper.dart';
import 'package:ticketing/i18n/translations.g.dart';

class TicketStatusScreen extends StatefulWidget {
  const TicketStatusScreen({super.key});

  @override
  State<TicketStatusScreen> createState() => _TicketStatusScreenState();
}

class _TicketStatusScreenState extends State<TicketStatusScreen> {
  String _scanBarcode = '';
  @override
  void initState() {
    super.initState();
  }

  Future<void> _handleRefresh() async {}

  @override
  Scaffold build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: getAppHeader(title: t.titles.ticketStatusCheck),
      body: RefreshIndicator(
        onRefresh: _handleRefresh,
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SizedBox(
                  height: 48,
                  width: double.infinity,
                  child: DefaultButton(
                    onSubmit: () async {
                      var code = await scanBarcode(mounted);
                      setState(() {
                        _scanBarcode = code;
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
}
