import 'package:auro_v2/core/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/widgets/custom_boxdecoration_from_buttom.dart';
import '../../../../../generated/l10n.dart';

import 'logo_section_signin_view.dart';

import 'phone_and_password_section_sign_in_view.dart';
import 'registration_section_buttom_sign_in_view.dart';
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
                        const PhoneAndPasswordSectionSignInView(),
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
                        const RegistrationSectionButtomsSignInview(),
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
