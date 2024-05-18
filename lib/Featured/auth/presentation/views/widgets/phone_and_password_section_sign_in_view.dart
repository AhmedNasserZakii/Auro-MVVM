import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../constant.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../generated/l10n.dart';
import 'custom_select_contry_code.dart';
import 'custom_text_field.dart';
import 'on_tapped_icon_text_field.dart';

class PhoneAndPasswordSectionSignInView extends StatelessWidget {
  const PhoneAndPasswordSectionSignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const CustomSelectContryCode(),
            SizedBox(width: 8.w),
            CustomTextField(
              title: S.of(context).enterPhoneNumber,
            ),
          ],
        ),
        SizedBox(height: 14.h),
        const OnTappedIconTextField(),
        Align(
          alignment: Alignment.centerLeft,
          child: TextButton(
            onPressed: () {},
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
