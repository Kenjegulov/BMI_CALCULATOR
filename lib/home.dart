import 'package:flutter/material.dart';
import 'package:flutter_lesson08/constants/MyColors.dart';
import 'package:flutter_lesson08/widgets/MyCard.dart';
import 'constants/MyTexts.dart';

class BMICalculator extends StatefulWidget {
  const BMICalculator({super.key});

  @override
  State<BMICalculator> createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.bacbackgroundColor,
      appBar: AppBar(
        backgroundColor: MyColor.bacbackgroundColor,
        title: const Center(child: MyText.bmi),
        elevation: 0,
      ),
      body: const Padding(
        padding: EdgeInsets.only(left: 21, right: 21, top: 32, bottom: 41),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: MyCard(myIcon: Icons.male, myText: "Male"),
                  ),
                  SizedBox(
                    width: 39,
                  ),
                  Expanded(
                    child: MyCard(myIcon: Icons.female, myText: "Female"),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: MyCard(myIcon: Icons.male, myText: "Male"),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: MyCard(myIcon: Icons.male, myText: "Male"),
                  ),
                  SizedBox(
                    width: 39,
                  ),
                  Expanded(
                    child: MyCard(myIcon: Icons.female, myText: "Female"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 73,
        color: MyColor.pink,
        child: const Center(child: MyText.calculator),
      ),
    );
  }
}
