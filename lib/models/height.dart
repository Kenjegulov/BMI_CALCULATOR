import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants/MyColors.dart';

class Height extends StatefulWidget {
  const Height({super.key});

  @override
  State<Height> createState() => _HeightState();
}

class _HeightState extends State<Height> {
  int number = 180;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: MyColor.bacbackgroundColorCard,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "HEIGHT",
              style: TextStyle(fontSize: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "$number",
                  style: const TextStyle(fontSize: 40),
                ),
                const SizedBox(width: 4),
                const Text(
                  "cm",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            SizedBox(
              width: 220,
              child: CupertinoSlider(
                value: 180,
                min: 0,
                max: 220,
                activeColor: MyColor.white,
                thumbColor: MyColor.pink,
                onChanged: (value) {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
