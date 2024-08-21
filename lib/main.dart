import 'package:flutter/material.dart';
import 'package:fruit/core/helper_functions/on_generate_route.dart';
import 'package:fruit/core/services/shared_preferences_singleton.dart';
import 'package:fruit/features/splash/presentation/views/splash_view.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fruit/generated/l10n.dart';

void main() async {
  await Prefs.init();
  runApp(const FruitHub());
}

class FruitHub extends StatelessWidget {
  const FruitHub({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      locale: const Locale('ar'),
      onGenerateRoute: onGenerateRoute,
      initialRoute: SplashView.routeName,
    );
  }
}
