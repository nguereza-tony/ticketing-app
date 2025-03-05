import 'package:flutter/material.dart';
import 'package:personal_budget/i18n/translations.g.dart';
import 'package:personal_budget/screens/user/pin/edit_pin_new_screen.dart';
import 'package:personal_budget/validators/pin_validator.dart';
import 'package:platine_flutter/platine_flutter.dart';
import 'package:platine_flutter/platine_i18n.dart' as platine_i18n;

class EditPinCurrentScreen extends StatefulWidget {
  const EditPinCurrentScreen({super.key});

  @override
  State<EditPinCurrentScreen> createState() => _EditPinCurrentScreenState();
}

class _EditPinCurrentScreenState extends State<EditPinCurrentScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController currentPin = TextEditingController(text: '');

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
      appBar: getAppHeader(title: t.titles.userEditPin),
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
                      t.labels.inputCurrentPinCode,
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
                      controller: currentPin,
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
                              if (currentPin.text.isEmpty == false) {
                                if (context.mounted) {
                                  switchToScreen(
                                    context,
                                    EditPinNewScreen(
                                      currentPin: currentPin.text,
                                    ),
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
