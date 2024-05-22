import 'package:auro_v2/Featured/auth/presentation/views/widgets/buttom_screen_row_section.dart';
import 'package:auro_v2/core/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import 'custom_appbar_back_icon.dart';

import 'package:auro_v2/generated/l10n.dart';
import 'headet_texts.dart';
import 'registration_info_section.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: CustomAppBarBackIcon(),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeaderTexts(
                  subTitle: S.of(context).enterAlldataRegistiration,
                  title: S.of(context).createNewAccount,
                ),
                SizedBox(height: 19.h),
                const RegistrationInfoSection(),
                SizedBox(height: 15.h),
                CustomElevatedButton(
                  title: S.of(context).newAccount,
                  onPressed: () {},
                ),
                Expanded(child: SizedBox(height: 150.h)),
                ButtomScreenRowSection(
                  textTitle: S.of(context).alreadyHaveAccount,
                  buttomTitle: S.of(context).signIn,
                  onPressed: () {
                    GoRouter.of(context).pop();
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
