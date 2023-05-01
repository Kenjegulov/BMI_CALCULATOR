import 'package:flutter/material.dart';
import '../constants/MyColors.dart';

class Age extends StatefulWidget {
  const Age({super.key});

  @override
  State<Age> createState() => _AgeState();
}

class _AgeState extends State<Age> {
  int number = 18;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: MyColor.bacbackgroundColorCard,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("WEIGHT"),
            Text("$number"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      number++;
                    });
                  },
                  child: const Icon(Icons.add),
                ),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      number--;
                    });
                  },
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
