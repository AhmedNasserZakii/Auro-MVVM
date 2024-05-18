import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/widgets/custom_shadow_container.dart';

class LogoSectionSignInView extends StatelessWidget {
  const LogoSectionSignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 106.h,
        ),
        SvgPicture.asset(
          AssetsData.logoDark,
        ),
        SizedBox(
          height: 50.h,
        ),
        const CustomShadowContainer(),
      ],
    );
  }
}
