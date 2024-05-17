import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/widgets/custom_boxdecoration_from_buttom.dart';
import 'buttons_section_onboarding_screen.dart';
import 'onboarding_image.dart';
import 'text_section_onboarding_screen.dart';

class OnboardingBodyView extends StatelessWidget {
  const OnboardingBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              const OnboardingImage(),
              Container(
                height: 295.h,
                width: double.infinity,
                decoration: containerBoxDecorationFromButtom(),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      SizedBox(height: 14.h),
                      const TextSectionOnboardingScreen(),
                      SizedBox(height: 30.h),
                      const ButtonsSectionOnboardingScreen(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
