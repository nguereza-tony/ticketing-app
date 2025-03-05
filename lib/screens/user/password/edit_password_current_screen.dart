import 'package:flutter/material.dart';
import 'package:platine_flutter/platine_flutter.dart';
import 'package:platine_flutter/platine_i18n.dart' as platine_i18n;
import 'package:ticketing/screens/user/password/edit_password_screen.dart';
import 'package:ticketing/validators/password_validator.dart';

class EditPasswordCurrentScreen extends StatefulWidget {
  const EditPasswordCurrentScreen({super.key});

  @override
  State<EditPasswordCurrentScreen> createState() =>
      _EditPasswordCurrentScreenState();
}

class _EditPasswordCurrentScreenState extends State<EditPasswordCurrentScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController currentPassword = TextEditingController(text: '');

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final pft = platine_i18n.Translations.of(context);

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: getAppHeader(title: pft.titles.editPassword),
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
                    AppInputFormField(
                      controller: currentPassword,
                      placeholder: pft.placeholders.currentPassword,
                      inputType: TextInputType.text,
                      hidden: true,
                      prefixIcon: Icons.lock,
                      validator: (text) =>
                          PasswordValidator.password(text?.trim()),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 1),
                      child: SizedBox(
                        height: 48,
                        width: double.infinity,
                        child: DefaultButton(
                          onSubmit: () async {
                            if (formKey.currentState!.validate()) {
                              if (currentPassword.text.isEmpty == false) {
                                if (context.mounted) {
                                  switchToScreen(
                                    context,
                                    EditPasswordScreen(
                                      currentPassword: currentPassword.text,
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
