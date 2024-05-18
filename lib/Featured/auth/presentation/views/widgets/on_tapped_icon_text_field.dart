import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../generated/l10n.dart';
import 'custom_text_field.dart';

class OnTappedIconTextField extends StatefulWidget {
  const OnTappedIconTextField({
    super.key,
    this.title,
  });
  final String? title;
  @override
  State<OnTappedIconTextField> createState() => _OnTappedIconTextFieldState();
}

class _OnTappedIconTextFieldState extends State<OnTappedIconTextField> {
  Icon suffixIcon = const Icon(FontAwesomeIcons.eye);
  bool? obScure;
  void _toggleIcon() {
    setState(() {
      if (suffixIcon.icon == FontAwesomeIcons.eye) {
        suffixIcon = const Icon(FontAwesomeIcons.eyeSlash);
        obScure = true;
      } else {
        suffixIcon = const Icon(FontAwesomeIcons.eye);
        obScure = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomTextField(
          title: widget.title == null ? S.of(context).password : widget.title!,
          suffixIcon: GestureDetector(
            onTap: _toggleIcon,
            child: suffixIcon,
          ),
          obScure: obScure,
        ),
      ],
    );
  }
}
