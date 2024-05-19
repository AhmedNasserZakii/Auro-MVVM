import 'package:auro_v2/Featured/auth/presentation/views/widgets/buttom_screen_row_section.dart';
import 'package:auro_v2/Featured/auth/presentation/views/widgets/custom_text_field.dart';
import 'package:auro_v2/Featured/auth/presentation/views/widgets/on_tapped_icon_text_field.dart';
import 'package:auro_v2/core/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../generated/l10n.dart';
import 'custom_appbar_back_icon.dart';
import 'headet_texts.dart';

class CreateNewPasswordBody extends StatelessWidget {
  const CreateNewPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
                HeaderTexts(
                  title: S.of(context).createNewPassword,
                  subTitle: S.of(context).createNewPasswordMessage,
                ),
                SizedBox(height: 19.h),
                const OnTappedIconTextField(),
                SizedBox(height: 15.h),
                OnTappedIconTextField(
                  title: S.of(context).passwordConfirmation,
                ),
                SizedBox(height: 15.h),
                CustomElevatedButton(
                  title: S.of(context).create,
                  onPressed: () {},
                ),
                const Spacer(),
                ButtomScreenRowSection(
                    textTitle: S.of(context).rememberPassword,
                    buttomTitle: S.of(context).backToSignIn,
                    onPressed: () {}),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
