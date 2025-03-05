import 'package:flutter/material.dart';
import 'package:personal_budget/screens/user/login_screen.dart';
import 'package:personal_budget/services/user_service.dart';
import 'package:personal_budget/validators/reset_password_validator.dart';
import 'package:platine_flutter/platine_flutter.dart';
import 'package:platine_flutter/platine_i18n.dart' as platine_i18n;

class ResetPasswordCreateScreen extends StatefulWidget {
  String email;
  String code;
  ResetPasswordCreateScreen(
      {super.key, required this.email, required this.code});

  @override
  State<ResetPasswordCreateScreen> createState() =>
      _ResetPasswordCreateScreenState();
}

class _ResetPasswordCreateScreenState extends State<ResetPasswordCreateScreen> {
  final _userService = UserService();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isLoading = false;
  TextEditingController password = TextEditingController(text: '');
  TextEditingController confirmPassword = TextEditingController(text: '');

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final pft = platine_i18n.Translations.of(context);

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: getAppHeader(title: pft.titles.createPassword),
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
                      controller: password,
                      placeholder: pft.placeholders.newPassword,
                      inputType: TextInputType.text,
                      hidden: true,
                      prefixIcon: null,
                      validator: (text) =>
                          ResetPasswordValidator.password(text?.trim()),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    AppInputFormField(
                      controller: confirmPassword,
                      placeholder: pft.placeholders.confirmPassword,
                      inputType: TextInputType.text,
                      hidden: true,
                      prefixIcon: null,
                      validator: (text) =>
                          ResetPasswordValidator.confirmPassword(
                              text?.trim(), password.text.trim()),
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
                                        await _userService.resetPassword(
                                      code: widget.code,
                                      email: widget.email,
                                      password: password.text,
                                      confirmPassword: confirmPassword.text,
                                    );

                                    // Disabled loading
                                    changeLoading(false);

                                    if (result) {
                                      NotificationHelper.success(
                                        pft.messages.resetPasswordSuccess,
                                        null,
                                        3,
                                      );

                                      if (context.mounted) {
                                        switchToScreen(
                                            context, const LoginScreen());
                                      }
                                    }
                                  }
                                },
                                backgroundColor: kButtonBgColor,
                                textColor: kButtonColor,
                                text: pft.buttons.createPassword,
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
