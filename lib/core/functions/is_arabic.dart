// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

bool isArabic() {
  debugPrint('Intl.getCurrentLocale(): ${Intl.getCurrentLocale()}');
  return Intl.getCurrentLocale() == 'ar';
}
