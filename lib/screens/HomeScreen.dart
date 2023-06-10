import 'package:final_project/widgets/homeWidget.dart';
import 'package:final_project/widgets/moreWidget.dart';
import 'package:final_project/widgets/orderWidget.dart';
import 'package:final_project/widgets/profileWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app-localization.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomeWidget(),
    OrderWidget(),
    ProfileWidget(),
    MoreWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: _screens[_currentIndex],
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Color(0xFF6FC8FB),
        ),
        child: Container(
          height: 84,
          child: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedItemColor: Colors.white,
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  "images/homeIcon.png",
                  width: 24,
                  height: 24,
                ),
                label: AppLocalizations.of(context)?.service ?? "Service",
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  "images/orderIcon.png",
                  width: 24,
                  height: 24,
                ),
                label: AppLocalizations.of(context)?.orders ?? "Orders",
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  "images/profileIcon.png",
                  width: 24,
                  height: 24,
                ),
                label: AppLocalizations.of(context)?.user ?? "User",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.more_horiz),
                label: AppLocalizations.of(context)?.more ?? "More",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
