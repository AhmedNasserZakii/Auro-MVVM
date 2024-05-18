import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../generated/l10n.dart';
import 'custom_text_field.dart';

class OnTappedIconTextField extends StatefulWidget {
  const OnTappedIconTextField({
    super.key,
  });

  @override
  State<OnTappedIconTextField> createState() => _OnTappedIconTextFieldState();
}

class _OnTappedIconTextFieldState extends State<OnTappedIconTextField> {
  Icon suffixIcon = const Icon(FontAwesomeIcons.eye);
  void _toggleIcon() {
    setState(() {
      if (suffixIcon.icon == FontAwesomeIcons.eye) {
        suffixIcon = const Icon(FontAwesomeIcons.eyeSlash);
      } else {
        suffixIcon = const Icon(FontAwesomeIcons.eye);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      title: S.of(context).password,
      suffixIcon: GestureDetector(
        onTap: _toggleIcon,
        child: suffixIcon,
      ),
    );
  }
}
