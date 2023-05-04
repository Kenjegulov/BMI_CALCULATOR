import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_lesson08/constants/MyColors.dart';
import 'package:flutter_lesson08/data.dart';

class Result extends StatefulWidget {
  const Result({super.key});
  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  num bmi = MyData.weight / pow(MyData.height / 100, 2);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [Icon(Icons.preview)],
        title: const Text("Ден соолук индексы (BMI)"),
      ),
      backgroundColor: MyColor.bacbackgroundColor,
      body: Card(
        margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${MyData.age}"),
            Text("${MyData.height}"),
            Text("${MyData.weight}"),
            Text(MyData.gender),
            Text("$bmi"),
          ],
        ),
      ),
    );
  }
}
