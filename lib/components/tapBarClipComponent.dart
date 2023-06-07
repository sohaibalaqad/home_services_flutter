import 'package:final_project/extensions/color.dart';
import 'package:flutter/material.dart';

class TapBarClip extends StatelessWidget {
  final String title;

  TapBarClip({required this.title});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TapClipPath(),
      child: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              '#0E4DFB'.toColor(),
              '#6FC8FB'.toColor(),
            ],
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                '#6FC8FB'.toColor(),
                '#0E4DFB'.toColor(),
              ],
            ),
          ),
          padding: const EdgeInsets.all(16),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    color: Colors.white,
                    iconSize: 20,
                    icon: Container(
                      width: 33,
                      height: 33,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(8), // Adjust the radius as desired
                      ),
                      child: Icon(Icons.arrow_back_ios_new_rounded),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        this.title,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontFamily: 'SFProDisplay-Medium',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 50,
                  ),
                ],
              ),
              Container(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TapClipPath extends CustomClipper<Path> {
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
