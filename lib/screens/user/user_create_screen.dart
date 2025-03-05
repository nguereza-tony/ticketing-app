import 'package:flutter/material.dart';
import 'package:personal_budget/helpers/app_helper.dart';
import 'package:personal_budget/i18n/translations.g.dart';
import 'package:personal_budget/providers/currency_provider.dart';
import 'package:personal_budget/screens/user/login_screen.dart';
import 'package:personal_budget/screens/user/password/reset_password_screen.dart';
import 'package:personal_budget/screens/user/user_create_validation_screen.dart';
import 'package:personal_budget/services/user_service.dart';
import 'package:personal_budget/validators/user_create_validator.dart';
import 'package:platine_flutter/platine_flutter.dart';
import 'package:platine_flutter/platine_i18n.dart' as platine_i18n;
import 'package:provider/provider.dart';

class UserCreateScreen extends StatefulWidget {
  const UserCreateScreen({super.key});

  @override
  State<UserCreateScreen> createState() => _UserCreateScreenState();
}

class _UserCreateScreenState extends State<UserCreateScreen> {
  final _userService = UserService();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isLoading = false;
  TextEditingController username = TextEditingController(text: '');
  TextEditingController email = TextEditingController(text: '');
  TextEditingController lastname = TextEditingController(text: '');
  TextEditingController firstname = TextEditingController(text: '');
  TextEditingController currency = TextEditingController(text: '');
  TextEditingController password = TextEditingController(text: '');
  TextEditingController confirmPassword = TextEditingController(text: '');

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((ts) {
      Provider.of<CurrencyProvider>(context, listen: false).getCurrencies();
    });
  }

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);
    final pft = platine_i18n.Translations.of(context);

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: getAppHeader(title: t.titles.userCreate, backButton: false),
      body: Consumer<CurrencyProvider>(
        builder: (context, currencyProvider, _) {
          var currencies = getCurrencyItems(currencyProvider.items);

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
                              UserCreateValidator.username(text?.trim()),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        AppInputFormField(
                          controller: email,
                          placeholder: pft.placeholders.email,
                          inputType: TextInputType.emailAddress,
                          prefixIcon: Icons.email,
                          validator: (text) =>
                              UserCreateValidator.email(text?.trim()),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Flexible(
                              child: AppInputFormField(
                                controller: lastname,
                                placeholder: pft.placeholders.lastname,
                                inputType: TextInputType.name,
                                prefixIcon: null,
                                validator: (text) =>
                                    UserCreateValidator.lastname(text?.trim()),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Flexible(
                              child: AppInputFormField(
                                controller: firstname,
                                placeholder: pft.placeholders.firstname,
                                inputType: TextInputType.name,
                                prefixIcon: null,
                                validator: (text) =>
                                    UserCreateValidator.firstname(text?.trim()),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        AppSelectFormField(
                          controller: currency,
                          placeholder: t.placeholders.currency,
                          prefixIcon: Icons.attach_money,
                          suffixIcon: Icons.keyboard_arrow_down_sharp,
                          items: currencies,
                          onChange: null,
                          validator: (text) =>
                              UserCreateValidator.currency(text?.trim()),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        AppInputFormField(
                          controller: password,
                          placeholder: pft.placeholders.password,
                          inputType: TextInputType.text,
                          hidden: true,
                          prefixIcon: null,
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
                          prefixIcon: null,
                          validator: (text) =>
                              UserCreateValidator.confirmPassword(
                                  text?.trim(), password.text.trim()),
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

                                        var result =
                                            await _userService.createUser(
                                          username: username.text,
                                          email: email.text,
                                          lastname: lastname.text,
                                          firstname: firstname.text,
                                          currency: int.parse(currency.text),
                                          password: password.text,
                                          confirmPassword: confirmPassword.text,
                                        );

                                        // Disabled loading
                                        changeLoading(false);

                                        if (result) {
                                          NotificationHelper.success(
                                            t.messages.userCreateSuccess,
                                            null,
                                            3,
                                          );
                                          if (context.mounted) {
                                            switchToScreen(
                                              context,
                                              UserCreateValidationScreen(
                                                email: email.text,
                                              ),
                                            );
                                          }
                                        }
                                      }
                                    },
                                    backgroundColor: kButtonBgColor,
                                    textColor: kButtonColor,
                                    text: t.buttons.userCreate,
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
                                switchToScreen(context, const LoginScreen());
                              },
                              child: Text(
                                pft.labels.actions.login,
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
        },
      ),
    );
  }

  void changeLoading(bool state) {
    setState(() {
      isLoading = state;
    });
  }
}
