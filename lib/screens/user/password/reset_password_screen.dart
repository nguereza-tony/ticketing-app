import 'package:flutter/material.dart';
import 'package:personal_budget/helpers/app_helper.dart';
import 'package:personal_budget/i18n/translations.g.dart';
import 'package:personal_budget/screens/user/password/reset_password_confirm_code_screen.dart';
import 'package:personal_budget/services/validation_code_service.dart';
import 'package:personal_budget/validators/reset_password_validator.dart';
import 'package:platine_flutter/platine_flutter.dart';
import 'package:platine_flutter/platine_i18n.dart' as platine_i18n;

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final _validationCodeService = ValidationCodeService();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isLoading = false;
  TextEditingController email = TextEditingController(text: '');

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
      appBar: getAppHeader(title: pft.titles.resetPassword),
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
                      controller: email,
                      placeholder: pft.placeholders.email,
                      inputType: TextInputType.emailAddress,
                      prefixIcon: Icons.email,
                      validator: (text) =>
                          ResetPasswordValidator.email(text?.trim()),
                    ),
                    const SizedBox(
                      height: 10,
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
                                  if (formKey.currentState!.validate()) {
                                    // Enable loading
                                    changeLoading(true);

                                    var result =
                                        await _validationCodeService.sendCode(
                                      email.text,
                                      ValidationCodeType.passwordReset,
                                    );

                                    // Disabled loading
                                    changeLoading(false);

                                    if (result) {
                                      if (context.mounted) {
                                        switchToScreen(
                                          context,
                                          ResetPasswordConfirmCodeScreen(
                                            email: email.text,
                                          ),
                                        );
                                      }
                                    }
                                  }
                                },
                                backgroundColor: kButtonBgColor,
                                textColor: kButtonColor,
                                text: t.buttons.sendCode,
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

  void changeLoading(bool state) {
    setState(() {
      isLoading = state;
    });
  }
}
