import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'routes/app_routes.dart';
import 'theme/app_theme.dart';
import 'screens/splash_screen.dart';

class MTCPayApp extends StatelessWidget {
  const MTCPayApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MTCPAY',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      supportedLocales: const [
        Locale('en'),
        Locale('tr'),
        Locale('fa'),
      ],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      onGenerateRoute: AppRoutes.onGenerateRoute,
      home: const SplashScreen(),
    );
  }
}
