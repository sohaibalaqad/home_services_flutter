import 'dart:ui';

import 'package:final_project/extensions/color.dart';
import 'package:final_project/items/serviceItem.dart';
import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: ClipPath(
            clipper: NavHomeClipPath(),
            child: Container(
              height: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    '#6FC8FB'.toColor(),
                    '#0E4DFB'.toColor(),
                  ],
                ),
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ImageFiltered(
                            imageFilter: ImageFilter.blur(),
                            child: Image.asset(
                              'images/logo2.png', // Replace with the path to your logo image
                              width: 50,
                            ),
                          ),
                          SizedBox(width: 115),
                          ImageFiltered(
                            imageFilter: ImageFilter.blur(),
                            child: Image.asset(
                              'images/notifi-icon.png', // Replace with the path to your logo image
                              width: 24,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 87,
                      width: 300,
                    ),
                  ]),
            ),
          ),
        ),
        Expanded(
          flex: 4,
          child: Container(
            child: Column(
              children: [
                Text(
                  'Select Service',
                  style: TextStyle(
                    color: '#0E4DFB'.toColor(),
                    fontFamily: 'Poppins',
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    padding: EdgeInsets.all(10),
                    children: [
                      ServiceItem(image: 'images/Shape 1.png', title: 'Carpenter'),
                      ServiceItem(image: 'images/Shape 2.png', title: 'Carpenter'),
                      ServiceItem(image: 'images/Shape 3.png', title: 'Carpenter'),
                      ServiceItem(image: 'images/Shape 4.png', title: 'Carpenter'),
                      ServiceItem(image: 'images/Shape 5.png', title: 'Carpenter'),
                      ServiceItem(image: 'images/Shape 6.png', title: 'Carpenter'),
                      ServiceItem(image: 'images/Shape 7.png', title: 'Carpenter'),
                      ServiceItem(image: 'images/Shape 3.png', title: 'Carpenter'),
                      ServiceItem(image: 'images/Shape 1.png', title: 'Carpenter'),
                      ServiceItem(image: 'images/Shape 6.png', title: 'Carpenter'),
                      ServiceItem(image: 'images/Shape 4.png', title: 'Carpenter'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class NavHomeClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double width = size.width;
    double height = size.height;
    final path = Path();

    path.moveTo(0, 0);
    path.lineTo(0, height - 50);
    path.quadraticBezierTo(width * 0.5, height, width, height - 50);
    path.lineTo(width, 0);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
