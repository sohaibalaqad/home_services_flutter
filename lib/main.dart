// import 'package:final_project/screens/DoneScreen.dart';
// import 'package:final_project/screens/HomeScreen.dart';
// import 'package:final_project/screens/LocationScreen.dart';
// import 'package:final_project/screens/OnboardingScreen.dart';
// import 'package:final_project/screens/LoginScreen.dart';
// import 'package:final_project/screens/RequestServicesSecreen.dart';
// import 'package:final_project/screens/SplashScreen.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:flutter_gen/gen_l10n/app-localization.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       localizationsDelegates: [
//         AppLocalizations.delegate,
//         GlobalMaterialLocalizations.delegate,
//         GlobalWidgetsLocalizations.delegate,
//         GlobalCupertinoLocalizations.delegate,
//       ],
//       supportedLocales: [
//         Locale("ar"),
//         Locale("en"),
//       ],
//       title: 'Flutter Final Project',
//       routes: {
//         '/': (context) => SplashScreen(),
//         '/onboarding': (context) => OnboardingScreen(),
//         '/login': (context) => LoginScreen(),
//         '/home': (context) => HomeScreen(),
//         '/RequestServices': (context) => RequestServicesSecreen(),
//         '/location': (context) => LocationScreen(),
//         '/done': (context) => DoneScreen(),
//       },
//     );
//   }
// }


import 'package:final_project/screens/DoneScreen.dart';
import 'package:final_project/screens/HomeScreen.dart';
import 'package:final_project/screens/LocationScreen.dart';
import 'package:final_project/screens/OnboardingScreen.dart';
import 'package:final_project/screens/LoginScreen.dart';
import 'package:final_project/screens/RequestServicesSecreen.dart';
import 'package:final_project/screens/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app-localization.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  static void setLocale(BuildContext context, Locale newLocale) {
    _MyAppState state = context.findAncestorStateOfType<_MyAppState>()!;
    state.setLocale(newLocale);
  }

  static Locale getLocale(BuildContext context) {
    final _MyAppState state = context.findAncestorStateOfType<_MyAppState>()!;
    return state.getLocale();
  }

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale _currentLocale = const Locale('en');

  void setLocale(Locale newLocale) {
    setState(() {
      _currentLocale = newLocale;
    });
  }

  Locale getLocale() {
    return _currentLocale;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en'),
        const Locale('ar'),
      ],
      locale: _currentLocale,
      title: 'Flutter Final Project',
      routes: {
        '/': (context) => SplashScreen(),
        '/onboarding': (context) => OnboardingScreen(),
        '/login': (context) => LoginScreen(),
        '/home': (context) => HomeScreen(),
        '/RequestServices': (context) => RequestServicesSecreen(),
        '/location': (context) => LocationScreen(),
        '/done': (context) => DoneScreen(),
      },
    );
  }
}
