import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:platine_flutter/platine_flutter.dart';
import 'package:ticketing/components/onboarding_slide.dart';
import 'package:ticketing/i18n/translations.g.dart';
import 'package:ticketing/screens/landing_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final Color kDarkBlueColor = kBorderColor;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return OnBoardingSlider(
      finishButtonText: t.labels.onboarding.terminate,
      onFinish: () {
        terminate(context);
      },
      finishButtonStyle: FinishButtonStyle(
        backgroundColor: kDarkBlueColor,
      ),
      skipTextButton: Text(
        t.labels.onboarding.skip,
        style: TextStyle(
          fontSize: 16,
          color: kDarkBlueColor,
          fontWeight: FontWeight.w600,
        ),
      ),
      controllerColor: kDarkBlueColor,
      totalPage: 3,
      headerBackgroundColor: Colors.white,
      pageBackgroundColor: Colors.white,
      centerBackground: true,
      background: [
        Image.asset(
          'assets/images/slide_1.png',
          height: 256,
          width: 256,
        ),
        Image.asset(
          'assets/images/slide_2.png',
          height: 256,
          width: 256,
        ),
        Image.asset(
          'assets/images/slide_3.png',
          height: 256,
          width: 256,
        ),
      ],
      speed: 1.8,
      pageBodies: [
        OnboardingSlide(
          title: t.labels.onboarding.title1,
          description: t.labels.onboarding.description1,
          color: kDarkBlueColor,
        ),
        OnboardingSlide(
          title: t.labels.onboarding.title2,
          description: t.labels.onboarding.description2,
          color: kDarkBlueColor,
        ),
        OnboardingSlide(
          title: t.labels.onboarding.title3,
          description: t.labels.onboarding.description3,
          color: kDarkBlueColor,
        ),
      ],
    );
  }

  Future<void> terminate(BuildContext? context) async {
    await ConfigHelper.init();
    ConfigHelper.setItem('onboarding', true);
    if (context != null) {
      switchToScreen(
        context.mounted ? context : null,
        const LandingScreen(),
      );
    }
  }
}
