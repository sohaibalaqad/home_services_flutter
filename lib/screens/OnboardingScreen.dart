import 'package:final_project/extensions/color.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          _buildPage(
            'images/illustration-1.png',
            'Fast reservation with technicians and craftsmen',
          ),
          _buildPage(
            'images/illustration-2.png',
            'Fast reservation with technicians and craftsmen',
          ),
          _buildPage(
            'images/illustration-3.png',
            'Fast reservation with technicians and craftsmen',
          ),
        ],
      ),
      bottomNavigationBar: _buildBottomNavigationBar(context),
      backgroundColor: Colors.white,
    );
  }

  Widget _buildPage(String imagePath, String description) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            // height: 200,
          ),
          SizedBox(height: 64),
          Container(
            margin: EdgeInsets.only(left: 26, right: 25),
            child: Text(
              description,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 21,
                color: "#0E9CF9".toColor(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomNavigationBar(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(25),
      padding: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            "#346EDF".toColor(),
            '#6FC8FB'.toColor(),
          ],
        ),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [],
      ),
      child: Container(
        height: 55,
        child: TextButton(
          onPressed: () {
            if (_pageController.page != null && _pageController.page! < 2) {
              _pageController.nextPage(
                duration: Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              );
            } else {
              Navigator.pushReplacementNamed(context, '/login');
            }
          },
          child: Text(
            'Next',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
