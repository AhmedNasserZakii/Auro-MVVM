import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../constant.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';

class CustomSelectContryCode extends StatelessWidget {
  const CustomSelectContryCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.h,
      width: 80.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: kContryCodeConatinerColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SvgPicture.asset(AssetsData.sudiaFlag),
            Text(
              '+966',
              style: Styles.textStyle14.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
