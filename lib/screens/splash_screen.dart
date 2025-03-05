import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:ticketing/screens/onboarding_screen.dart';
import 'package:platine_flutter/platine_flutter.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: const CircleAvatar(
        radius: 48,
        backgroundImage: AssetImage('assets/images/logo.jpg'),
      ),
      backgroundColor: kBorderColor,
      nextScreen: const OnBoardingScreen(),
      splashTransition: SplashTransition.rotationTransition,
      pageTransitionType: PageTransitionType.fade,
      animationDuration: const Duration(seconds: 2),
      centered: true,
    );
  }
}
