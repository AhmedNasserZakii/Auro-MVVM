import 'package:auro_v2/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constant.dart';
import '../../../../../core/utils/app_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    _navigationToSelectRegionView();
  }

  void _navigationToSelectRegionView() async {
    Future.delayed(
      const Duration(seconds: kTranstionDuration),
      () {
        GoRouter.of(context).pushReplacement(AppRouter.kSelectRegionView);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SvgPicture.asset(
        AssetsData.logoLight,
        width: 174.w,
        height: 71.h,
      ),
    );
  }
}
