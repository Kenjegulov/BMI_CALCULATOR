import 'package:flutter/material.dart';
import 'package:flutter_lesson08/constants/MyColors.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key, required this.myIcon, required this.myText});
  final IconData myIcon;
  final String myText;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: MyColor.bacbackgroundColorCard,
      child: Column(
        children: [
          Icon(myIcon),
          Text(myText),
        ],
      ),
    );
  }
}
