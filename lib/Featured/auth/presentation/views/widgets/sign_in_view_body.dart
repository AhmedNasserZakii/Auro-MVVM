import 'package:auro_v2/constant.dart';
import 'package:auro_v2/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/widgets/custom_boxdecoration_from_buttom.dart';
import '../../../../../generated/l10n.dart';
import 'custom_select_contry_code.dart';
import 'custom_text_field.dart';
import 'logo_section_signin_view.dart';
import 'on_tapped_icon_text_field.dart';

class SignInViewBody extends StatelessWidget {
  const SignInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          fillOverscroll: true,
          hasScrollBody: false,
          child: Column(
            children: [
              const LogoSectionSignInView(),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: containerBoxDecorationFromButtom(),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        SizedBox(height: 28.h),
                        Text(
                          S.of(context).welcome,
                          style: Styles.textStyle24,
                        ),
                        SizedBox(height: 7.h),
                        Text(
                          S.of(context).signInWelcomeMessage,
                          style: Styles.textStyle14.copyWith(
                            color: kSeconderyColor,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 28.h),
                        Row(
                          children: [
                            const CustomSelectContryCode(),
                            SizedBox(width: 8.w),
                            CustomTextField(
                              title: S.of(context).enterPhoneNumber,
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        const OnTappedIconTextField(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
