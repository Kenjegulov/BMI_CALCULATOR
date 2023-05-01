import 'package:flutter/material.dart';
import 'package:flutter_lesson08/constants/MyColors.dart';
import 'package:flutter_lesson08/models/age.dart';
import 'package:flutter_lesson08/models/female.dart';
import 'package:flutter_lesson08/models/weight.dart';
import 'package:flutter_lesson08/models/male.dart';
import 'constants/MyTexts.dart';
import 'models/height.dart';

class BMICalculator extends StatefulWidget {
  const BMICalculator({super.key});

  @override
  State<BMICalculator> createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  bool genderTest = true;
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
        padding: EdgeInsets.only(left: 21, right: 21, top: 39, bottom: 41),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Male(),
                  ),
                  SizedBox(width: 35),
                  Expanded(
                    child: Female(),
                  ),
                ],
              ),
            ),
            SizedBox(height: 18),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Height(),
                  ),
                ],
              ),
            ),
            SizedBox(height: 18),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Weight(),
                  ),
                  SizedBox(width: 35),
                  Expanded(
                    child: Age(),
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
