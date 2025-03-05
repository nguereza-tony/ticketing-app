import 'package:flutter/material.dart';
import 'package:ticketing/helpers/app_helper.dart';
import 'package:ticketing/i18n/translations.g.dart';
import 'package:ticketing/screens/user/password/reset_password_create_screen.dart';
import 'package:ticketing/services/validation_code_service.dart';
import 'package:ticketing/validators/reset_password_validator.dart';
import 'package:platine_flutter/platine_flutter.dart';
import 'package:platine_flutter/platine_i18n.dart' as platine_i18n;

class ResetPasswordConfirmCodeScreen extends StatefulWidget {
  String email;
  ResetPasswordConfirmCodeScreen({super.key, required this.email});

  @override
  State<ResetPasswordConfirmCodeScreen> createState() =>
      _ResetPasswordConfirmCodeScreenState();
}

class _ResetPasswordConfirmCodeScreenState
    extends State<ResetPasswordConfirmCodeScreen> {
  final _validationCodeService = ValidationCodeService();
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
                    Text(
                      t.labels.inputMailValidationCode,
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        fontFamily: 'poppins',
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    AppInputFormField(
                      controller: code,
                      placeholder: pft.placeholders.validationCode,
                      inputType: TextInputType.number,
                      prefixIcon: Icons.lock_rounded,
                      validator: (text) =>
                          ResetPasswordValidator.code(text?.trim()),
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
                              if (context.mounted) {
                                switchToScreen(
                                  context,
                                  ResetPasswordCreateScreen(
                                    email: widget.email,
                                    code: code.text,
                                  ),
                                );
                              }
                            }
                          },
                          backgroundColor: kButtonBgColor,
                          textColor: kButtonColor,
                          text: pft.buttons.confirm,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 5,
                        ),
                        InkWell(
                          onTap: () async {
                            await _validationCodeService.sendCode(
                              widget.email,
                              ValidationCodeType.passwordReset,
                            );
                          },
                          child: Text(
                            pft.labels.actions.resendValidationCode,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              fontFamily: 'poppins',
                              color: kActionColor,
                            ),
                          ),
                        ),
                      ],
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
