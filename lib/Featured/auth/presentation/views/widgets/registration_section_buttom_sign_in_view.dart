import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../constant.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../generated/l10n.dart';

class RegistrationSectionButtomsSignInview extends StatelessWidget {
  const RegistrationSectionButtomsSignInview({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              S.of(context).dontHaveAccount,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                S.of(context).registerNow,
                style: Styles.textStyle14.copyWith(
                  color: kMainColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10.h),
      ],
    );
  }
}
