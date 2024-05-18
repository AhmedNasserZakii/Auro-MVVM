import 'package:auro_v2/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/widgets/custom_elevated_button.dart';
import 'introduction_section.dart';
import 'select_language_drop_down_menu.dart';
import 'package:auro_v2/Featured/splash/presentation/views/widgets/select_country_drop_down_menu.dart';
import 'package:auro_v2/generated/l10n.dart';

class SelectRegionViewBody extends StatefulWidget {
  const SelectRegionViewBody({super.key});

  @override
  State<SelectRegionViewBody> createState() => _SelectRegionViewBodyState();
}

class _SelectRegionViewBodyState extends State<SelectRegionViewBody> {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'splash',
      child: Scaffold(
        body: CustomScrollView(
          // physics: const BouncingScrollPhysics(
          //     parent: AlwaysScrollableScrollPhysics()),
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              fillOverscroll: true,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(child: SizedBox(height: 10.h)),
                    const ItroductionSection(),
                    Text(
                      S.of(context).language,
                    ),
                    SizedBox(height: 10.h),
                    SizedBox(
                      width: 343.w,
                      height: 43.h,
                      child: const LanguageDropdown(),
                    ),
                    SizedBox(height: 16.h),
                    Text(
                      S.of(context).country,
                    ),
                    SizedBox(height: 10.h),
                    SizedBox(
                      width: 343.w,
                      height: 43.h,
                      child: const CountryDropdown(),
                    ),
                    const Expanded(child: SizedBox(height: 120)),
                    CustomElevatedButton(
                      title: S.of(context).continueButtom,
                      onPressed: () {
                        GoRouter.of(context).push(AppRouter.kOnboardingView);
                      },
                    ),
                    SizedBox(height: 10.h),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
