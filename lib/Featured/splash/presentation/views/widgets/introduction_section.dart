import 'package:auro_v2/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../constant.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';

class ItroductionSection extends StatelessWidget {
  const ItroductionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          AssetsData.logo,
          width: 147.w,
          height: 60.h,
        ),
        SizedBox(
          height: 30.h,
        ),
        Text(
          S.of(context).welcome,
          style: Styles.textStyle24,
        ),
        SizedBox(
          height: 8.h,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Text(
            S.of(context).chooselanguage,
            style: Styles.textStyle14.copyWith(color: kSeconderyColor),
            maxLines: 2,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
