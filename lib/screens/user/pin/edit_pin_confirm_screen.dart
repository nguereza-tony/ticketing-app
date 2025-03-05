import 'package:flutter/material.dart';
import 'package:personal_budget/i18n/translations.g.dart';
import 'package:personal_budget/screens/user/profile_screen.dart';
import 'package:personal_budget/services/user_service.dart';
import 'package:personal_budget/validators/pin_validator.dart';
import 'package:platine_flutter/platine_flutter.dart';
import 'package:platine_flutter/platine_i18n.dart' as platine_i18n;

class EditPinConfirmScreen extends StatefulWidget {
  String currentPin;
  String code;
  EditPinConfirmScreen({
    super.key,
    required this.currentPin,
    required this.code,
  });

  @override
  State<EditPinConfirmScreen> createState() => _EditPinConfirmScreenState();
}

class _EditPinConfirmScreenState extends State<EditPinConfirmScreen> {
  final _userService = UserService();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isLoading = false;
  TextEditingController confirmPin = TextEditingController(text: '');

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
                      t.labels.inputConfirmNewPinCode,
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
                      controller: confirmPin,
                      length: 4,
                      hidden: false,
                      validator: (text) =>
                          PinValidator.confirmCode(text?.trim(), widget.code),
                    ),
                    const SizedBox(
                      height: 14,
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

                                    var result = await _userService.editPin(
                                      pin: widget.currentPin,
                                      code: widget.code,
                                      confirmPin: confirmPin.text,
                                    );

                                    // Disabled loading
                                    changeLoading(false);

                                    if (result) {
                                      NotificationHelper.success(
                                        t.messages.userEditPinSuccess,
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
                                text: pft.buttons.validate,
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
