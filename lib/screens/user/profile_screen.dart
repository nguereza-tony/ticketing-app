import 'package:flutter/material.dart';
import 'package:personal_budget/i18n/translations.g.dart';
import 'package:personal_budget/providers/user_provider.dart';
import 'package:personal_budget/screens/about_screen.dart';
import 'package:personal_budget/screens/setting_screen.dart';
import 'package:personal_budget/screens/user/login_screen.dart';
import 'package:personal_budget/screens/user/password/edit_password_current_screen.dart';
import 'package:personal_budget/screens/user/pin/create_pin_screen.dart';
import 'package:personal_budget/screens/user/pin/edit_pin_current_screen.dart';
import 'package:personal_budget/screens/user/pin/reset_pin_screen.dart';
import 'package:personal_budget/screens/user/user_edit_screen.dart';
import 'package:platine_flutter/platine_flutter.dart';
import 'package:platine_flutter/platine_i18n.dart' as platine_i18n;
import 'package:provider/provider.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((ts) {
      Provider.of<UserProvider>(context, listen: false).getUserProfile();
    });
  }

  Future<void> _handleRefresh() async {
    Provider.of<UserProvider>(context, listen: false).getUserBasicInfo();
  }

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);
    final pft = platine_i18n.Translations.of(context);

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: getAppHeader(title: pft.titles.userProfile),
      body: Consumer<UserProvider>(builder: (context, userProvider, child) {
        if (userProvider.profileLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        final user = userProvider.user;
        if (user == null) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return RefreshIndicator(
          onRefresh: _handleRefresh,
          child: ListView(
            physics: const AlwaysScrollableScrollPhysics(),
            children: [
              CircleAvatar(
                radius: 50,
                backgroundColor: const Color(0xff1B3BBB),
                child: Text(
                  '${user.firstname[0].toUpperCase()}${user.lastname[0].toUpperCase()}',
                  style: const TextStyle(
                    fontFamily: 'poppins',
                    fontSize: 38,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 35,
                    ),
                    Text(
                      '${user.firstname} ${user.lastname}',
                      style: const TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      width: 35,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 10,
                      ),
                      child: IconButton(
                        splashRadius: 20,
                        onPressed: () {
                          switchToScreen(
                            context,
                            UserEditScreen(
                              user: user,
                            ),
                          );
                        },
                        visualDensity: VisualDensity.compact,
                        icon: const Icon(Icons.edit_outlined),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GreyLabel(text: t.labels.personalInfos),
              const SizedBox(
                height: 15,
              ),
              ProfileItem(
                icon: Icons.person_rounded,
                title: '${user.lastname} ${user.firstname}',
              ),
              const SizedBox(
                height: 8,
              ),
              ProfileItem(
                icon: Icons.lock,
                title: user.username,
              ),
              const SizedBox(
                height: 8,
              ),
              ProfileItem(
                icon: Icons.email,
                title: user.email,
              ),
              const SizedBox(
                height: 8,
              ),
              ProfileItem(
                icon: Icons.attach_money_outlined,
                title: '${user.currency?.name} (${user.currency?.code})',
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                margin: const EdgeInsets.only(left: 26, right: 26),
                height: 1,
                color: const Color(0xFFCCCCCC),
              ),
              const SizedBox(
                height: 16,
              ),
              GreyLabel(text: pft.labels.securities),
              const SizedBox(
                height: 16,
              ),
              ProfileAction(
                title: pft.labels.actions.changePassword,
                action: () {
                  switchToScreen(context, const EditPasswordCurrentScreen());
                },
              ),
              const SizedBox(
                height: 10,
              ),
              if (user.pinSet) ...[
                ProfileAction(
                  title: t.labels.actions.changePin,
                  action: () {
                    switchToScreen(context, const EditPinCurrentScreen());
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                ProfileAction(
                  title: t.labels.actions.resetPin,
                  action: () {
                    switchToScreen(
                      context,
                      ResetPinScreen(email: user.email),
                    );
                  },
                ),
              ] else ...[
                ProfileAction(
                  title: t.labels.actions.createPin,
                  action: () {
                    switchToScreen(context, const CreatePinScreen());
                  },
                ),
              ],
              const SizedBox(
                height: 10,
              ),
              ProfileAction(
                title: pft.labels.actions.logout,
                action: () {
                  userProvider.logout();
                  NotificationHelper.success(
                    pft.messages.logoutSuccess,
                    null,
                    3,
                  );
                  switchToScreen(context, const LoginScreen());
                },
              ),
              const SizedBox(
                height: 24,
              ),
              GreyLabel(text: pft.labels.helpSupports),
              const SizedBox(
                height: 16,
              ),
              ProfileAction(
                title: pft.labels.actions.setting,
                action: () {
                  switchToScreen(context, const SettingScreen());
                },
              ),
              const SizedBox(
                height: 10,
              ),
              ProfileAction(
                title: pft.labels.actions.about,
                action: () {
                  switchToScreen(context, const AboutScreen());
                },
              ),
              const SizedBox(
                height: 10,
              ),
              ProfileAction(title: pft.labels.actions.contactUs),
              const SizedBox(
                height: 10,
              ),
              ProfileAction(title: pft.labels.actions.terms),
              const SizedBox(
                height: 10,
              ),
              ProfileAction(title: pft.labels.actions.faq),
              const SizedBox(
                height: 5,
              ),
            ],
          ),
        );
      }),
    );
  }
}
