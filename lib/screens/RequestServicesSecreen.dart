import 'package:dotted_border/dotted_border.dart';
import 'package:final_project/components/tapBarClipComponent.dart';
import 'package:final_project/extensions/color.dart';
import 'package:flutter/material.dart';

class RequestServicesSecreen extends StatefulWidget {
  const RequestServicesSecreen({super.key});

  @override
  State<RequestServicesSecreen> createState() => _RequestServicesSecreenState();
}

class _RequestServicesSecreenState extends State<RequestServicesSecreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: TapBarClip(title: 'Smith'),
            ),
            Expanded(
              flex: 4,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                DottedBorder(
                                  borderType: BorderType.RRect,
                                  radius: Radius.circular(10),
                                  dashPattern: [10, 4],
                                  strokeCap: StrokeCap.round,
                                  color: '#0E4DFB'.toColor(),
                                  child: Container(
                                    width: double.infinity,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color:
                                      Colors.blue.shade50.withOpacity(.3),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                      children: [
                                        Image.asset('images/uploadIcon.png'),
                                        Text(
                                          'Select your file',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  ' image must be no more than 2 MB Max 5 Image',
                                  style: TextStyle(
                                      color: '#7F8FA6'.toColor(), fontSize: 11),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Expanded(
                              child: Container(
                                height: 220,
                                child: TextField(
                                  keyboardType: TextInputType.multiline,
                                  maxLines: 4,
                                  minLines: 4,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFF0E4DFB),
                                      ),
                                    ),
                                    hintText: 'More Details About Problem ...',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 305,
                        height: 55,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.black),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/location');
                          },
                          child: Text(
                            'Next',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Nunito Sans',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
