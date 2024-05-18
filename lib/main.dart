import 'package:auro_v2/core/utils/app_router.dart';
import 'package:auro_v2/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (context, _) {
        return MaterialApp.router(
          locale: const Locale('ar'),
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          debugShowCheckedModeBanner: false,
          routerConfig: AppRouter.router,
          title: 'auro',
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            textTheme: GoogleFonts.ibmPlexSansArabicTextTheme(),
          ),
        );
      },
    );
  }
}
