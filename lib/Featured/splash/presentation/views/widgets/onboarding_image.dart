import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/assets.dart';

class OnboardingImage extends StatelessWidget {
  const OnboardingImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AssetsData.kOnboardingImage,
      width: double.infinity,
      height: 420.h,
      fit: BoxFit.fill,
    );
  }
}
