import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../../generated/l10n.dart';
import 'page_view_scroll_text.dart';

class TextSectionOnboardingScreen extends StatelessWidget {
  const TextSectionOnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 4.h,
          width: 40.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color(0xffCCD3D9),
          ),
        ),
        SizedBox(height: 25.h),
        Text(
          S.of(context).discounts,
          style: Styles.textStyle24.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: 10.h),
        const PageViewScroll(),
      ],
    );
  }
}
