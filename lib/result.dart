import 'package:flutter/material.dart';
import 'package:flutter_lesson08/constants/MyColors.dart';

class Result extends StatefulWidget {
  const Result(
      {super.key,
      required this.height,
      required this.weight,
      required this.gender,
      required this.age});
  final int height;
  final int weight;
  final String gender;
  final int age;
  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.bacbackgroundColor,
      body: Card(
        child: Text(
            "${widget.height}\n${widget.weight}\n${widget.gender}\n${widget.age}"),
      ),
    );
  }
}
