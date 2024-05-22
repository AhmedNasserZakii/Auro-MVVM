import 'package:flutter/material.dart';

import '../../../../../constant.dart';
import '../../../../../core/utils/styles.dart';

class InterestsWidget extends StatefulWidget {
  const InterestsWidget({super.key});

  @override
  InterestsWidgetState createState() => InterestsWidgetState();
}

class InterestsWidgetState extends State<InterestsWidget> {
  final List<String> interests = [
    'مطاعم',
    'تسوق',
    'الصحة',
    'العناية بالبشرة',
    'السينما',
    'الترفيه',
    'أدوات ومعدات',
    'الإلكترونيات',
    'رياضة & جيم',
    'العناية بالجسم',
    'الكتب والقراءة'
  ];

  final Set<String> selectedInterests = <String>{};

  void toggleSelection(String interest) {
    setState(() {
      if (selectedInterests.contains(interest)) {
        selectedInterests.remove(interest);
      } else {
        selectedInterests.add(interest);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10.0,
      runSpacing: 10.0,
      children: [
        for (var interest in interests)
          GestureDetector(
            onTap: () => toggleSelection(interest),
            child: InterestChip(
              label: interest,
              isSelected: selectedInterests.contains(interest),
            ),
          ),
        GestureDetector(
          onTap: () {
            // Handle "عرض المزيد +36" tap
          },
          child: Container(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(
                color: kSelectLanguageBorderColor,
              ),
            ),
            child: Text(
              'عرض المزيد +36',
              style: Styles.textStyle14.copyWith(
                color: kMainColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class InterestChip extends StatelessWidget {
  final String label;
  final bool isSelected;

  const InterestChip({super.key, required this.label, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
      decoration: BoxDecoration(
        color: isSelected ? kInterestContainerColor : Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: isSelected
              ? kInterestContainerBorderColor
              : kSelectLanguageBorderColor,
          width: 1.0,
        ),
      ),
      child: Text(
        label,
        style: Styles.textStyle14.copyWith(
          color: isSelected ? kInterestTextColor : kSelectLanguageIconColor,
        ),
      ),
    );
  }
}
