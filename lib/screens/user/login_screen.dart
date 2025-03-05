import 'package:flutter/material.dart';
import 'package:personal_budget/api/api_client.dart';
import 'package:personal_budget/i18n/translations.g.dart';
import 'package:personal_budget/providers/user_provider.dart';
import 'package:personal_budget/screens/dashboard_screen.dart';
import 'package:personal_budget/screens/user/password/reset_password_screen.dart';
import 'package:personal_budget/screens/user/user_create_screen.dart';
import 'package:personal_budget/validators/login_validator.dart';
import 'package:platine_flutter/platine_flutter.dart';
import 'package:platine_flutter/platine_i18n.dart' as platine_i18n;
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isLoading = false;
  TextEditingController username = TextEditingController(text: '');
  TextEditingController password = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);
    final pft = platine_i18n.Translations.of(context);

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: getAppHeader(title: pft.titles.login, backButton: false),
      body: Consumer<UserProvider>(builder: (context, userProvider, _) {
        return Padding(
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
                      const SizedBox(
                        height: 12,
                      ),
                      AppInputFormField(
                        controller: username,
                        placeholder: pft.placeholders.username,
                        inputType: TextInputType.text,
                        prefixIcon: Icons.person_rounded,
                        validator: (text) =>
                            LoginValidator.username(text?.trim()),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      AppInputFormField(
                        controller: password,
                        placeholder: pft.placeholders.password,
                        inputType: TextInputType.text,
                        hidden: true,
                        prefixIcon: Icons.lock_rounded,
                        validator: (text) =>
                            LoginValidator.password(text?.trim()),
                      ),
                      const SizedBox(
                        height: 20,
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

                                      await userProvider.login(
                                        username: username.text,
                                        password: password.text,
                                      );

                                      // Disabled loading
                                      changeLoading(false);

                                      if (userProvider.token != null) {
                                        // Set authorization
                                        var api = await ApiClient().create();
                                        await api.authorize(
                                          jwt: userProvider.token ?? '',
                                          refreshToken:
                                              userProvider.refreshToken ?? '',
                                        );

                                        await AuthHelper.setToken(
                                            userProvider.token ?? '');
                                        await userProvider.setLoginStatus();

                                        NotificationHelper.success(
                                          pft.messages.loginSuccess,
                                          null,
                                          3,
                                        );
                                        if (context.mounted) {
                                          switchToScreen(
                                            context,
                                            const DashboardScreen(),
                                          );
                                        }
                                      }
                                    }
                                  },
                                  backgroundColor: kButtonBgColor,
                                  textColor: kButtonColor,
                                  text: pft.buttons.login,
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
                            onTap: () {
                              switchToScreen(context, const UserCreateScreen());
                            },
                            child: Text(
                              t.labels.actions.createUser,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                fontFamily: 'poppins',
                                color: kActionColor,
                              ),
                            ),
                          ),
                          Flexible(child: Container()),
                          InkWell(
                            onTap: () {
                              switchToScreen(
                                context,
                                const ResetPasswordScreen(),
                              );
                            },
                            child: Text(
                              pft.labels.actions.resetPassword,
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
        );
      }),
    );
  }

  void changeLoading(bool state) {
    setState(() {
      isLoading = state;
    });
  }
}
