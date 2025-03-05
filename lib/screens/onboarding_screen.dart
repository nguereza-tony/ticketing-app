import 'package:flutter/material.dart';
import 'package:personal_budget/screens/dashboard_screen.dart';
import 'package:personal_budget/screens/user/login_screen.dart';
import 'package:platine_flutter/platine_flutter.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  void initState() {
    super.initState();
    _redirect();
  }

  Future<void> _redirect() async {
    await Future.delayed(Duration.zero);
    if (mounted == false) {
      return;
    }

    if (await AuthHelper.isLogged()) {
      switchToScreen(context.mounted ? context : null, const DashboardScreen());
    } else {
      switchToScreen(context.mounted ? context : null, const LoginScreen());
    }
  }

  @override
  Scaffold build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(
          color: Colors.black,
        ),
      ),
    );
  }
}
