import 'package:flutter/material.dart';
import 'package:platine_flutter/platine_flutter.dart';
import 'package:platine_flutter/platine_i18n.dart' as platine_i18n;
import 'package:provider/provider.dart';
import 'package:ticketing/models/user.dart';
import 'package:ticketing/providers/user_provider.dart';
import 'package:ticketing/screens/user/profile_screen.dart';
import 'package:ticketing/services/user_service.dart';
import 'package:ticketing/validators/user_validator.dart';

class UserEditScreen extends StatefulWidget {
  User user;
  UserEditScreen({super.key, required this.user});

  @override
  State<UserEditScreen> createState() => _UserEditScreenState();
}

class _UserEditScreenState extends State<UserEditScreen> {
  final _userService = UserService();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isLoading = false;
  TextEditingController username = TextEditingController(text: '');
  TextEditingController email = TextEditingController(text: '');
  TextEditingController lastname = TextEditingController(text: '');
  TextEditingController firstname = TextEditingController(text: '');

  @override
  void initState() {
    super.initState();

    var user = widget.user;
    username.text = user.username;
    email.text = user.email;
    lastname.text = user.lastname;
    firstname.text = user.firstname;
  }

  @override
  Widget build(BuildContext context) {
    final pft = platine_i18n.Translations.of(context);

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: getAppHeader(title: pft.titles.userEdit),
      body: Consumer<UserProvider>(
        builder: (context, userProvider, _) {
          if (userProvider.user == null) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

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
                              UserValidator.username(text?.trim()),
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
                              UserValidator.email(text?.trim()),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        AppInputFormField(
                          controller: lastname,
                          placeholder: pft.placeholders.lastname,
                          inputType: TextInputType.name,
                          prefixIcon: null,
                          validator: (text) =>
                              UserValidator.lastname(text?.trim()),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        AppInputFormField(
                          controller: firstname,
                          placeholder: pft.placeholders.firstname,
                          inputType: TextInputType.name,
                          prefixIcon: null,
                          validator: (text) =>
                              UserValidator.firstname(text?.trim()),
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
                                            await _userService.editUser(
                                          username: username.text,
                                          email: email.text,
                                          lastname: lastname.text,
                                          firstname: firstname.text,
                                        );

                                        // Disabled loading
                                        changeLoading(false);

                                        if (result) {
                                          NotificationHelper.success(
                                            pft.messages.userEditSuccess,
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
                                    text: pft.buttons.edit,
                                  ),
                          ),
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
