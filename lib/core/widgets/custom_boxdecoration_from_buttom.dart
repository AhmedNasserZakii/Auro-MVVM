import 'package:flutter/material.dart';

BoxDecoration containerBoxDecorationFromButtom() {
  return const BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(16),
      topRight: Radius.circular(16),
    ),
  );
}
