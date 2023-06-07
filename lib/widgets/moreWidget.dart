import 'package:final_project/extensions/color.dart';
import 'package:flutter/material.dart';
import 'package:final_project/components/tapBarClipComponent.dart';

class MoreWidget extends StatefulWidget {
  const MoreWidget({super.key});

  @override
  State<MoreWidget> createState() => _MoreWidgetState();
}

class _MoreWidgetState extends State<MoreWidget> {
  final List<String> moreList = [
    "Change Password",
    "FAQ's",
    "About App",
    "Terms & Conditions",
    "Privacy Policy",
    "Rate App",
    "Delete Account",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
            child: TapBarClip(title: 'More'),
        ),
        Expanded(
          flex: 4,
            child: ListView.builder(
              itemCount: moreList.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(
                      moreList[index],
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Nunito Sans',
                        fontWeight: FontWeight.w500
                      ),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios, size: 18, color: '#C2CECE'.toColor(),),
                );
              },
            ),
        ),
      ],
    );
  }
}
