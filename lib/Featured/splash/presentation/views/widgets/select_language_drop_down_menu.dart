// ignore_for_file: unused_field

import 'package:auro_v2/constant.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../core/utils/assets.dart';
import 'language_row.dart';

class LanguageDropdown extends StatefulWidget {
  const LanguageDropdown({super.key});

  @override
  LanguageDropdownState createState() => LanguageDropdownState();
}

class LanguageDropdownState extends State<LanguageDropdown> {
  String _selectedLanguage = 'العربية';
  String _selectedFlag = AssetsData.sudiaFlag;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // Adjust the width as needed
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        border: Border.all(
          color: kSelectLanguageBorderColor, // Border color
          width: 1,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: _selectedLanguage,
          icon: const Icon(
            FontAwesomeIcons.chevronDown,
            size: 24,
            color: kSelectLanguageIconColor,
          ),
          isExpanded: true,
          onChanged: (String? newValue) {
            setState(() {
              if (newValue == 'العربية') {
                _selectedFlag = 'assets/images/saudi_arabia_flag.png';
              } else if (newValue == 'English') {
                _selectedFlag =
                    'assets/images/english_flag.png'; // Replace with correct path
              } else if (newValue == 'المضحكه') {
                _selectedFlag =
                    'assets/images/funny_flag.png'; // Replace with correct path
              }
              _selectedLanguage = newValue!;
            });
          },
          items: const [
            DropdownMenuItem<String>(
              value: 'العربية',
              child: LanguageRow(
                languageName: 'العربية',
                imageName: AssetsData.sudiaFlag,
              ),
            ),
            DropdownMenuItem<String>(
              value: 'English',
              child: LanguageRow(
                languageName: 'English',
                imageName: AssetsData.sudiaFlag,
              ),
            ),
            DropdownMenuItem<String>(
              value: 'الفارسيه',
              child: LanguageRow(
                languageName: 'الفارسيه',
                imageName: AssetsData.sudiaFlag,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
