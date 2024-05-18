import 'package:auro_v2/constant.dart';
import 'package:auro_v2/core/utils/styles.dart';
import 'package:auro_v2/core/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/widgets/custom_boxdecoration_from_buttom.dart';
import '../../../../../generated/l10n.dart';
import 'custom_select_contry_code.dart';
import 'custom_text_field.dart';
import 'logo_section_signin_view.dart';
import 'on_tapped_icon_text_field.dart';
import 'text_section_signin_view.dart';

class SignInViewBody extends StatelessWidget {
  const SignInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          //fillOverscroll: true,
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
                        const TextSectionSignInView(),
                        Row(
                          children: [
                            const CustomSelectContryCode(),
                            SizedBox(width: 8.w),
                            CustomTextField(
                              title: S.of(context).enterPhoneNumber,
                            ),
                          ],
                        ),
                        SizedBox(height: 14.h),
                        const OnTappedIconTextField(),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              S.of(context).forgetPassword,
                              style: Styles.textStyle12.copyWith(
                                color: kSeconderyColor,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 14.h),
                        CustomElevatedButton(
                          title: S.of(context).signIn,
                          onPressed: () {},
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 60.h,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              S.of(context).dontHaveAccount,
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                S.of(context).registerNow,
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
