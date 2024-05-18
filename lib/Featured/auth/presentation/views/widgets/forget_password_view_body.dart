import 'package:auro_v2/Featured/auth/presentation/views/widgets/buttom_screen_row_section.dart';
import 'package:auro_v2/Featured/auth/presentation/views/widgets/custom_appbar_back_icon.dart';
import 'package:auro_v2/Featured/auth/presentation/views/widgets/custom_text_field.dart';
import 'package:auro_v2/constant.dart';
import 'package:auro_v2/core/utils/styles.dart';
import 'package:auro_v2/core/widgets/custom_elevated_button.dart';
import 'package:auro_v2/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  const ForgetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 3),
            child: CustomAppBarBackIcon(),
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 12.h),
                Text(
                  S.of(context).forgetPassword,
                  style: Styles.textStyle24,
                ),
                SizedBox(height: 8.h),
                Text(
                  S.of(context).messageForOTP,
                  style: Styles.textStyle14.copyWith(
                    color: kSeconderyColor,
                  ),
                ),
                SizedBox(height: 20.h),
                Row(
                  children: [
                    CustomTextField(title: S.of(context).emailorphone),
                  ],
                ),
                SizedBox(height: 16.h),
                CustomElevatedButton(
                  title: S.of(context).send,
                  onPressed: () {},
                ),
                const Expanded(
                  child: SizedBox(
                    height: 425,
                  ),
                ),
                ButtomScreenRowSection(
                    textTitle: S.of(context).rememberPassword,
                    buttomTitle: S.of(context).backToSignIn,
                    onPressed: () {
                      GoRouter.of(context).pop();
                    }),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
