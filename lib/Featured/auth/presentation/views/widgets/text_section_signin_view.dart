import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../constant.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../generated/l10n.dart';

class TextSectionSignInView extends StatelessWidget {
  const TextSectionSignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 28.h),
        Text(
          S.of(context).welcome,
          style: Styles.textStyle24,
        ),
        SizedBox(height: 7.h),
        Text(
          S.of(context).signInWelcomeMessage,
          style: Styles.textStyle14.copyWith(
            color: kSeconderyColor,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 28.h),
      ],
    );
  }
}
