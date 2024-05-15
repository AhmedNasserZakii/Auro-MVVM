import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/styles.dart';

class LanguageRow extends StatelessWidget {
  const LanguageRow({
    super.key,
    required this.languageName,
    required this.imageName,
  });
  final String languageName;
  final String imageName;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          imageName, // Update with AssetsData.sudiaFlag if using custom assets class
          width: 24,
          height: 24,
        ),
        const SizedBox(width: 8),
        Text(
          languageName,
          style: Styles.textStyle14.copyWith(
            fontWeight: FontWeight.w500,
          ), // Customize the style
        ),
      ],
    );
  }
}
