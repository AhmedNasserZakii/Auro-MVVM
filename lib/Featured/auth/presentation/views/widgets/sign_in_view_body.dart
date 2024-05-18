import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_boxdecoration_from_buttom.dart';
import 'logo_section_signin_view.dart';

class SignInViewBody extends StatelessWidget {
  const SignInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Column(
            children: [
              const LogoSectionSignInView(),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: containerBoxDecorationFromButtom(),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
