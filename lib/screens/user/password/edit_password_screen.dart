import 'package:flutter/material.dart';
import 'package:personal_budget/screens/user/profile_screen.dart';
import 'package:personal_budget/services/user_service.dart';
import 'package:personal_budget/validators/user_create_validator.dart';
import 'package:platine_flutter/platine_flutter.dart';
import 'package:platine_flutter/platine_i18n.dart' as platine_i18n;

class EditPasswordScreen extends StatefulWidget {
  String currentPassword;
  EditPasswordScreen({
    super.key,
    required this.currentPassword,
  });

  @override
  State<EditPasswordScreen> createState() => _EditPasswordScreenState();
}

class _EditPasswordScreenState extends State<EditPasswordScreen> {
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
                      controller: password,
                      placeholder: pft.placeholders.newPassword,
                      inputType: TextInputType.text,
                      hidden: true,
                      prefixIcon: Icons.lock,
                      validator: (text) =>
                          UserCreateValidator.password(text?.trim()),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    AppInputFormField(
                      controller: confirmPassword,
                      placeholder: pft.placeholders.confirmPassword,
                      inputType: TextInputType.text,
                      hidden: true,
                      prefixIcon: Icons.lock,
                      validator: (text) => UserCreateValidator.confirmPassword(
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
                        child: DefaultButton(
                          onSubmit: () async {
                            if (formKey.currentState!.validate()) {
                              var result = await _userService.editPassword(
                                currentPassword: widget.currentPassword,
                                password: password.text,
                                confirmPassword: confirmPassword.text,
                              );

                              if (result) {
                                NotificationHelper.success(
                                  pft.messages.userEditPasswordSuccess,
                                  null,
                                  3,
                                );

                                if (context.mounted) {
                                  switchToScreen(
                                    context,
                                    const ProfileScreen(),
                                  );
                                }
                              }
                            }
                          },
                          backgroundColor: kButtonBgColor,
                          textColor: kButtonColor,
                          text: pft.buttons.editPassword,
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
