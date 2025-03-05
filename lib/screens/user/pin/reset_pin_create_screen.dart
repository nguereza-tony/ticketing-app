import 'package:flutter/material.dart';
import 'package:personal_budget/i18n/translations.g.dart';
import 'package:personal_budget/screens/user/pin/reset_pin_confirm_screen.dart';
import 'package:personal_budget/validators/pin_validator.dart';
import 'package:platine_flutter/platine_flutter.dart';
import 'package:platine_flutter/platine_i18n.dart' as platine_i18n;

class ResetPinCreateScreen extends StatefulWidget {
  const ResetPinCreateScreen({super.key});

  @override
  State<ResetPinCreateScreen> createState() => _ResetPinCreateScreenState();
}

class _ResetPinCreateScreenState extends State<ResetPinCreateScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController code = TextEditingController(text: '');

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);
    final pft = platine_i18n.Translations.of(context);

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: getAppHeader(title: t.titles.resetPin),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      t.labels.inputNewPinCode,
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        fontFamily: 'poppins',
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    AppPinFormField(
                      controller: code,
                      length: 4,
                      hidden: false,
                      validator: (text) => PinValidator.code(text?.trim()),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 1),
                      child: SizedBox(
                        height: 48,
                        width: double.infinity,
                        child: DefaultButton(
                          onSubmit: () async {
                            if (formKey.currentState!.validate()) {
                              if (code.text.isEmpty == false) {
                                if (context.mounted) {
                                  switchToScreen(
                                    context,
                                    ResetPinConfirmScreen(code: code.text),
                                  );
                                }
                              }
                            }
                          },
                          backgroundColor: kButtonBgColor,
                          textColor: kButtonColor,
                          text: pft.buttons.next,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
