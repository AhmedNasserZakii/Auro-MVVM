// ignore_for_file: depend_on_referenced_packages

import 'package:intl/intl.dart';

bool isArabic() {
  print('isArabic:${Intl.getCurrentLocale()}');
  if (Intl.getCurrentLocale() == 'ar') {
    return true;
  } else {
    return false;
  }
}
