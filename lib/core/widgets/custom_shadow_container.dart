import 'package:auro_v2/core/widgets/custom_boxdecoration_from_buttom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomShadowContainer extends StatelessWidget {
  const CustomShadowContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Opacity(
        opacity: 0.3,
        child: Container(
          width: double.infinity,
          height: 11.h,
          decoration: containerBoxDecorationFromButtom(),
        ),
      ),
    );
  }
}
