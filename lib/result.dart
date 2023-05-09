import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_lesson08/constants/MyColors.dart';
import 'package:flutter_lesson08/constants/MyTexts.dart';
import 'package:flutter_lesson08/data.dart';

import 'bmiCalculator.dart';

class Result extends StatefulWidget {
  const Result({super.key});
  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  num result = MyData.weight / pow(MyData.height / 100, 2);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [Icon(Icons.preview)],
        title: const Text("Ден соолук индексы (BMI)"),
      ),
      backgroundColor: MyColor.bacbackgroundColor,
      body: Padding(
        padding: const EdgeInsets.only(left: 11, right: 9, top: 43),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 14),
              child: Text(
                'Жыйынтык',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              height: 315,
              width: 380,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: MyColor.bacbackgroundColorCard,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    BmiCalculator().bmiResult(result),
                    style:
                        const TextStyle(fontSize: 24, color: Color(0xff08E82C)),
                  ),
                  Text(
                    result.toStringAsFixed(1),
                    style: const TextStyle(fontSize: 80),
                  ),
                  Text(
                    BmiCalculator().bmiDescription(result),
                    style: const TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: MyColor.pink,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.zero),
          ),
          minimumSize: const Size(double.infinity, 73),
        ),
        onPressed: () {
          Navigator.pop(context);
        },
        child: MyText.recalculate,
      ),
    );
  }
}
