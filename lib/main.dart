import 'package:final_project/screens/DoneScreen.dart';
import 'package:final_project/screens/HomeScreen.dart';
import 'package:final_project/screens/LocationScreen.dart';
import 'package:final_project/screens/OnboardingScreen.dart';
import 'package:final_project/screens/LoginScreen.dart';
import 'package:final_project/screens/RequestServicesSecreen.dart';
import 'package:final_project/screens/SplashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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