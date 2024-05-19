import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../constant.dart';
import '../../../../../core/utils/styles.dart';

class OTPContainersInput extends StatefulWidget {
  const OTPContainersInput({super.key});

  @override
  State<OTPContainersInput> createState() => _OTPContainersInputState();
}

class _OTPContainersInputState extends State<OTPContainersInput> {
  List<TextEditingController> controllers =
      List.generate(5, (_) => TextEditingController());
  List<bool> isTapped = List.generate(5, (_) => false);
  List<bool> isNotEmpty = List.generate(5, (_) => false);
  @override
  void dispose() {
    controllers.forEach((controller) => controller.dispose());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
        5,
        (index) {
          return Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  border:
                      Border.all(color: kSelectLanguageBorderColor, width: 1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: TextField(
                  controller: controllers[index],
                  inputFormatters: [LengthLimitingTextInputFormatter(1)],
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    constraints: BoxConstraints(
                      maxHeight: MediaQuery.of(context).size.width / 7,
                      maxWidth: MediaQuery.of(context).size.width / 7,
                    ),
                  ),
                  style: Styles.textStyle24,
                  textAlign: TextAlign.center,
                  cursorColor: kContainerLineColor,
                  keyboardType: TextInputType.number,
                  onTap: () {
                    setState(() {
                      isTapped[index] = true;
                    });
                  },
                  onChanged: (value) {
                    setState(() {
                      isNotEmpty[index] = value.isNotEmpty;
                      if (value.isNotEmpty && index < 4) {
                        FocusScope.of(context).nextFocus();
                      }
                      if (value.isEmpty && index > 0) {
                        FocusScope.of(context).previousFocus();
                      }
                    });
                  },
                ),
              ),
              Positioned(
                bottom: 12.5.w,
                right: 8.h,
                child: Container(
                  width: 40,
                  height: 1,
                  color: (isTapped[index] && isNotEmpty[index] ||
                          isNotEmpty[index])
                      ? Colors.transparent
                      : kContainerLineColor,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
