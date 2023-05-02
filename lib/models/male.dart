import 'package:flutter/material.dart';
import '../constants/MyColors.dart';

class Male extends StatefulWidget {
  const Male({super.key});

  @override
  State<Male> createState() => _MaleState();
}

class _MaleState extends State<Male> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: MyColor.bacbackgroundColorCard,
      child: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.male, size: 80),
            Text("Male",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
          ],
        ),
      ),
    );
  }
}
