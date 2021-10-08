import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:test_aplication/generated/l10n.dart';
import 'package:test_aplication/screens/home.dart';
import 'package:test_aplication/theme.dart';

void main() {
  runApp(AdaptiveTheme(
      initial: AdaptiveThemeMode.light,
      light: kLightMode,
      dark: kDarkMode,
      builder: (light, dark) => MaterialApp(
            theme: light,
            darkTheme: dark,
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            home: const TestApp(),
          )));
}
