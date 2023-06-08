import 'package:final_project/extensions/color.dart';
import 'package:flutter/material.dart';

class DoneScreen extends StatefulWidget {
  const DoneScreen({super.key});

  @override
  State<DoneScreen> createState() => _DoneScreenState();
}

class _DoneScreenState extends State<DoneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Icon(
                  Icons.clear_rounded,
                  size: 30,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset(
              'images/illustration-4.png',
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: 70,
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "ORDER ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Nunito Sans',
                    ),
                  ),
                  TextSpan(
                    text: "Done",
                    style: TextStyle(
                      color: Color(0xFF0E4DFB),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Nunito Sans',
                    ),
                  ),
                  TextSpan(
                    text: "!",
                    style: TextStyle(
                      color: Color(0xFFAF8344),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Nunito Sans',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'The ORDER has been sent. A technician will \n contact you',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                height: 2,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
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
                width: 255,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/home');
                  },
                  child: Text(
                    'Go to Home',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
