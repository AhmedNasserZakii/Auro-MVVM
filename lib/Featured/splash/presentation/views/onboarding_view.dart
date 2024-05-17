import 'package:auro_v2/constant.dart';
import 'package:flutter/material.dart';

import 'widgets/onboarding_body_view.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kOnboardingBackgroundColor,
      body: OnboardingBodyView(),
    );
  }
}
