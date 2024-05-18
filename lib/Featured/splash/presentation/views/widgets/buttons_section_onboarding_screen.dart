import 'package:auro_v2/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constant.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_elevated_button.dart';
import '../../../../../generated/l10n.dart';

class ButtonsSectionOnboardingScreen extends StatelessWidget {
  const ButtonsSectionOnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomElevatedButton(
          title: S.of(context).continueButtom,
          onPressed: () {
            GoRouter.of(context).push(AppRouter.kSignInView);
          },
        ),
        SizedBox(height: 12.h),
        TextButton(
          onPressed: () {
            GoRouter.of(context).push(AppRouter.kSignInView);
          },
          child: Text(
            S.of(context).skipButtom,
            style: Styles.textStyle14.copyWith(
              color: kSelectLanguageIconColor,
            ),
          ),
        ),
      ],
    );
  }
}
