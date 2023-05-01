import 'package:flutter/material.dart';
import '../constants/MyColors.dart';

class Female extends StatefulWidget {
  const Female({super.key});

  @override
  State<Female> createState() => _FemaleState();
}

class _FemaleState extends State<Female> {
  @override
  Widget build(BuildContext context) {
    return const Card(
      color: MyColor.bacbackgroundColorCard,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.female, size: 80),
            Text("Female", style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
