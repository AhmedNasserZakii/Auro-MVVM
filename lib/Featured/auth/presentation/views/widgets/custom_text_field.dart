import 'package:flutter/material.dart';

import '../../../../../constant.dart';
import '../../../../../core/utils/styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.title,
    this.suffixIcon,
    this.obScure,
  });
  final String title;
  final Widget? suffixIcon;
  final bool? obScure;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        decoration: InputDecoration(
          border: const OutlineInputBorder(
              // borderSide: BorderSide(
              //   color: Colors.amber,
              // ),
              // borderRadius: BorderRadius.all(
              //   Radius.circular(8),
              // ),
              ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: kSelectLanguageBorderColor,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: kSelectLanguageBorderColor,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          label: Text(
            title,
            style: Styles.textStyleHint14,
          ),
          //prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          suffixIconColor: kSelectLanguageIconColor,
        ),
        obscureText: obScure == null ? false : obScure!,
      ),
    );
  }
}
