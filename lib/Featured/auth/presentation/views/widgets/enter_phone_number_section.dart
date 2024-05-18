import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../generated/l10n.dart';
import 'custom_text_field.dart';
import 'package:auro_v2/Featured/auth/presentation/views/widgets/custom_select_contry_code.dart';

class EnterPhoneNumberSection extends StatelessWidget {
  const EnterPhoneNumberSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomSelectContryCode(),
        SizedBox(width: 8.w),
        CustomTextField(
          title: S.of(context).enterPhoneNumber,
        ),
      ],
    );
  }
}
