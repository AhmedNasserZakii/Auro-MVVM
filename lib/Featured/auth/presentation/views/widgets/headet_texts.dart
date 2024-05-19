import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../constant.dart';
import '../../../../../core/utils/styles.dart';

class HeaderTexts extends StatelessWidget {
  const HeaderTexts({super.key, required this.title, required this.subTitle});
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Styles.textStyle24,
        ),
        SizedBox(height: 8.h),
        Text(
          subTitle,
          style: Styles.textStyle14.copyWith(
            color: kSeconderyColor,
          ),
        ),
      ],
    );
  }
}
