import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../constant.dart';
import '../../../../../core/utils/styles.dart';

class PageViewScroll extends StatelessWidget {
  const PageViewScroll({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = PageController(initialPage: 1);
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          height: 42.h,
          child: PageView(
            controller: controller,
            children: const [
              Text(
                'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة لقد تم توليد هذا النص من مولد النص العربى',
                style: Styles.textStyle14,
                textAlign: TextAlign.center,
                maxLines: 2,
              ),
              Text(
                'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة لقد تم توليد هذا النص من مولد النص العربى',
                style: Styles.textStyle14,
                textAlign: TextAlign.center,
                maxLines: 2,
              ),
              Text(
                'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة لقد تم توليد هذا النص من مولد النص العربى',
                style: Styles.textStyle14,
                textAlign: TextAlign.center,
                maxLines: 2,
              ),
            ],
          ),
        ),
        SizedBox(height: 16.h),
        SmoothPageIndicator(
          controller: controller,
          count: 3,
          effect: const ExpandingDotsEffect(
            activeDotColor: kMainColor,
            dotHeight: 12,
            dotWidth: 12,
          ),
        ),
      ],
    );
  }
}
