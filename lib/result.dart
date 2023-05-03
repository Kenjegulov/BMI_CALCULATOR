import 'package:flutter/material.dart';
import 'package:flutter_lesson08/constants/MyColors.dart';
import 'package:flutter_lesson08/data.dart';

class Result extends StatefulWidget {
  const Result({super.key});
  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [Icon(Icons.preview)],
        title: const Text("Ден соолук индексы (BMI)"),
      ),
      backgroundColor: MyColor.bacbackgroundColor,
      body: Card(
        borderOnForeground: true,
        semanticContainer: true,
        margin:
            const EdgeInsets.only(left: 20, right: 100, top: 30, bottom: 30),
        child: Expanded(
          child: Column(
            children: [
              Text("${MyData.age}"),
              Text("${MyData.height}"),
              Text("${MyData.weight}"),
              Text(MyData.gender),
            ],
          ),
        ),
      ),
    );
  }
}
