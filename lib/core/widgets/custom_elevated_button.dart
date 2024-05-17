import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constant.dart';
import '../functions/is_arabic.dart';
import '../utils/styles.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.title,
    required this.onPressed,
  });

  final String title;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.w,
      height: 40.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: kElevatedButtonLinearColors,
          begin: isArabic() ? Alignment.centerRight : Alignment.centerLeft,
          end: isArabic() ? Alignment.centerLeft : Alignment.centerRight,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        child: Text(
          title,
          style: Styles.textStyle14.copyWith(
            color: kElevatedButtonTextColor,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
