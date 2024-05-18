import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/functions/is_arabic.dart';

class CustomAppBarBackIcon extends StatelessWidget {
  const CustomAppBarBackIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: isArabic()
                ? const Icon(
                    FontAwesomeIcons.arrowRight,
                  )
                : const Icon(
                    FontAwesomeIcons.arrowLeft,
                  ),
          ),
        ],
      ),
    );
  }
}
