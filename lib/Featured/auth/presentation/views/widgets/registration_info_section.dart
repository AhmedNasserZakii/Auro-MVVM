import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../generated/l10n.dart';
import 'custom_text_field.dart';
import 'enter_phone_number_section.dart';
import 'on_tapped_icon_text_field.dart';

class RegistrationInfoSection extends StatelessWidget {
  const RegistrationInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CustomTextField(
              title: S.of(context).userName,
            ),
          ],
        ),
        SizedBox(height: 15.h),
        const EnterPhoneNumberSection(),
        SizedBox(height: 15.h),
        Row(
          children: [
            CustomTextField(
              title: S.of(context).emailAddress,
            ),
          ],
        ),
        SizedBox(height: 15.h),
        const OnTappedIconTextField(),
        SizedBox(height: 15.h),
        OnTappedIconTextField(
          title: S.of(context).passwordConfirmation,
        ),
      ],
    );
  }
}
