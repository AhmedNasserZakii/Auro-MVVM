import 'package:auro_v2/Featured/auth/presentation/views/widgets/custom_appbar_back_icon.dart';
import 'package:auro_v2/constant.dart';
import 'package:auro_v2/core/utils/styles.dart';
import 'package:auro_v2/core/widgets/custom_elevated_button.dart';
import 'package:auro_v2/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'select_interests_widget.dart';

class InterestsViewBody extends StatelessWidget {
  const InterestsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: CustomAppBarBackIcon(),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  S.of(context).interests,
                  style: Styles.textStyle24,
                ),
                SizedBox(height: 8.h),
                Text(
                  S.of(context).interestsMessage,
                  style: Styles.textStyle14.copyWith(
                    color: kSeconderyColor,
                  ),
                ),
                SizedBox(height: 20.h),
                const InterestsWidget(),
                const Spacer(),
                CustomElevatedButton(
                  title: S.of(context).continueButtom,
                  onPressed: () {},
                ),
                SizedBox(height: 15.h),
                Center(
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      S.of(context).skipButtom,
                      style: Styles.textStyle14.copyWith(
                        color: kSeconderyColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
