import 'package:flutter/material.dart';
import 'package:platine_flutter/platine_flutter.dart';
import 'package:ticketing/screens/dashboard_screen.dart';
import 'package:ticketing/screens/onboarding_screen.dart';
import 'package:ticketing/screens/user/login_screen.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
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

    await ConfigHelper.init();
    if (ConfigHelper.getBool('onboarding', false) == false) {
      switchToScreen(
        context.mounted ? context : null,
        const OnboardingScreen(),
      );
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
