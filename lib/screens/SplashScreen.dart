import 'dart:async';

import 'package:final_project/extensions/color.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(
          seconds: 3,
        ),
            () => Navigator.pushReplacementNamed(context, '/onboarding')
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              "#346EDF".toColor(),
              "#6FC8FB".toColor(),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: ClipRect(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    widthFactor:
                        2 / 3, // Adjust this value to control the cut-off area
                    child: Container(
                      margin: EdgeInsets.all(16.0),
                      child: Image.asset('images/logo.png'),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Theme(
                data: Theme.of(context).copyWith(
                  colorScheme: ColorScheme.fromSwatch().copyWith(
                    secondary: "#346EDF".toColor(),
                  ),
                ),
                child: CircularProgressIndicator(), // Loader widget
              ),
            ],
          ),
        ),
      ),
    );
  }
}
