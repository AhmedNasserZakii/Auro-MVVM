import 'package:auro_v2/Featured/auth/presentation/views/widgets/buttom_screen_row_section.dart';
import 'package:auro_v2/constant.dart';
import 'package:auro_v2/core/utils/app_router.dart';
import 'package:auro_v2/core/utils/styles.dart';
import 'package:auro_v2/core/widgets/custom_elevated_button.dart';
import 'package:auro_v2/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import 'custom_appbar_back_icon.dart';
import 'otp_inputs.dart';

class OtpViweBody extends StatelessWidget {
  const OtpViweBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 3),
          child: CustomAppBarBackIcon(),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  S.of(context).verificationcode,
                  style: Styles.textStyle24,
                ),
                SizedBox(height: 8.h),
                Text(
                  S.of(context).verificationMessage,
                  style: Styles.textStyle14.copyWith(
                    color: kSeconderyColor,
                  ),
                ),
                SizedBox(height: 20.h),
                const OTPContainersInput(),
                SizedBox(height: 16.h),
                ButtomScreenRowSection(
                    textTitle: S.of(context).didnotRecive,
                    buttomTitle: S.of(context).resend,
                    onPressed: () {}),
                CustomElevatedButton(
                    title: S.of(context).confirm,
                    onPressed: () {
                      GoRouter.of(context)
                          .pushReplacement(AppRouter.kCreateNewPasswordView);
                    }),
                const Spacer(),
                ButtomScreenRowSection(
                  textTitle: S.of(context).rememberPassword,
                  buttomTitle: S.of(context).backToSignIn,
                  onPressed: () {
                    GoRouter.of(context).pushReplacement(AppRouter.kSignInView);
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
