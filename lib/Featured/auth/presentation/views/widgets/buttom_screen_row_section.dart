import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../constant.dart';
import '../../../../../core/utils/styles.dart';

class ButtomScreenRowSection extends StatelessWidget {
  const ButtomScreenRowSection(
      {super.key,
      required this.textTitle,
      required this.buttomTitle,
      required this.onPressed});
  final String textTitle;
  final String buttomTitle;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              textTitle,
            ),
            TextButton(
              onPressed: onPressed,
              child: Text(
                buttomTitle,
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
