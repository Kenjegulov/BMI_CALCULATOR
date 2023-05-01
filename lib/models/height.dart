import 'package:flutter/material.dart';
import '../constants/MyColors.dart';

class Height extends StatefulWidget {
  const Height({super.key});

  @override
  State<Height> createState() => _HeightState();
}

class _HeightState extends State<Height> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: MyColor.bacbackgroundColorCard,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("HEIGHT"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Icon(Icons.add),
                ),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Icon(Icons.remove),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
