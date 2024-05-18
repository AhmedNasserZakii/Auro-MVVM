import 'dart:math';

import 'package:auro_v2/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/widgets/custom_boxdecoration_from_buttom.dart';

class SignInViewBody extends StatelessWidget {
  const SignInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Column(
            children: [
              SizedBox(
                height: 106.h,
              ),
              SvgPicture.asset(
                AssetsData.logoDark,
              ),
              SizedBox(
                height: 50.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Opacity(
                  opacity: 0.3,
                  child: Container(
                    width: double.infinity,
                    height: 11.h,
                    decoration: containerBoxDecorationFromButtom(),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: containerBoxDecorationFromButtom(),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
