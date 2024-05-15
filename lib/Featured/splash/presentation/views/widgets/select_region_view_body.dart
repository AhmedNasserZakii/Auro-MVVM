import 'package:auro_v2/core/functions/is_arabic.dart';

import 'package:auro_v2/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'introduction_section.dart';
import 'select_language_drop_down_menu.dart';

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
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: isArabic() == false
                ? CrossAxisAlignment.end
                : CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
            ],
          ),
        ),
      ),
    );
  }
}
