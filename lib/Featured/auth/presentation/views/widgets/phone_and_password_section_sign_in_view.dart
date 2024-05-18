import 'package:auro_v2/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constant.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../generated/l10n.dart';

import 'enter_phone_number_section.dart';
import 'on_tapped_icon_text_field.dart';

class PhoneAndPasswordSectionSignInView extends StatelessWidget {
  const PhoneAndPasswordSectionSignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const EnterPhoneNumberSection(),
        SizedBox(height: 14.h),
        const OnTappedIconTextField(),
        Align(
          alignment: Alignment.centerLeft,
          child: TextButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kForgetPasswordView);
            },
            child: Text(
              S.of(context).forgetPassword,
              style: Styles.textStyle12.copyWith(
                color: kSeconderyColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
