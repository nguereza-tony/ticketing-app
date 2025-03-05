import 'package:flutter/material.dart';
import 'package:personal_budget/helpers/app_helper.dart';
import 'package:personal_budget/i18n/translations.g.dart';
import 'package:personal_budget/screens/user/pin/reset_pin_create_screen.dart';
import 'package:personal_budget/services/validation_code_service.dart';
import 'package:personal_budget/validators/reset_password_validator.dart';
import 'package:platine_flutter/platine_flutter.dart';
import 'package:platine_flutter/platine_i18n.dart' as platine_i18n;

class ResetPinScreen extends StatefulWidget {
  String email;
  ResetPinScreen({super.key, required this.email});

  @override
  State<ResetPinScreen> createState() => _ResetPinScreenState();
}

class _ResetPinScreenState extends State<ResetPinScreen> {
  final _validationCodeService = ValidationCodeService();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isLoading = false;
  TextEditingController code = TextEditingController(text: '');

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((ts) {
      _validationCodeService.sendCode(
        widget.email,
        ValidationCodeType.pinReset,
      );
    });
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
                        child: isLoading
                            ? const LoadingButton()
                            : DefaultButton(
                                onSubmit: () async {
                                  if (formKey.currentState!.validate()) {
                                    // Enable loading
                                    changeLoading(true);

                                    var result = await _validationCodeService
                                        .confirmCode(
                                      widget.email,
                                      code.text,
                                      ValidationCodeType.pinReset,
                                    );

                                    // Disabled loading
                                    changeLoading(false);

                                    if (result) {
                                      if (context.mounted) {
                                        switchToScreen(
                                          context,
                                          const ResetPinCreateScreen(),
                                        );
                                      }
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
                              ValidationCodeType.pinReset,
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

  void changeLoading(bool state) {
    setState(() {
      isLoading = state;
    });
  }
}
