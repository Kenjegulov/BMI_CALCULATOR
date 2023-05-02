import 'package:flutter/material.dart';
import 'package:flutter_lesson08/constants/MyColors.dart';
import 'package:flutter_lesson08/models/age.dart';
import 'package:flutter_lesson08/models/female.dart';
import 'package:flutter_lesson08/models/weight.dart';
import 'package:flutter_lesson08/models/male.dart';
import 'package:flutter_lesson08/result.dart';
import 'constants/MyTexts.dart';
import 'models/height.dart';

class BMICalculator extends StatefulWidget {
  const BMICalculator({super.key});

  @override
  State<BMICalculator> createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  String gender = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.bacbackgroundColor,
      appBar: AppBar(
        backgroundColor: MyColor.bacbackgroundColor,
        title: const Center(child: MyText.bmi),
        elevation: 0,
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 21, right: 21, top: 39, bottom: 41),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  if (gender == "" || gender == "male")
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            gender = "male";
                          });
                        },
                        onTapCancel: () {
                          setState(() {
                            gender = "";
                          });
                        },
                        child: Male(),
                      ),
                    ),
                  SizedBox(width: gender == "" ? 35 : 0),
                  if (gender == "" || gender == "female")
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            gender = "female";
                          });
                        },
                        onTapCancel: () {
                          setState(() {
                            gender = "";
                          });
                        },
                        child: Female(),
                      ),
                    ),
                ],
              ),
            ),
            const SizedBox(height: 18),
            const Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Height(),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 18),
            const Expanded(
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
      bottomNavigationBar: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Result(
                height: 180,
                weight: 60,
                gender: gender,
                age: 21,
              ),
            ),
          );
        },
        child: Container(
          width: double.infinity,
          height: 73,
          color: MyColor.pink,
          child: const Center(child: MyText.calculator),
        ),
      ),
    );
  }
}
