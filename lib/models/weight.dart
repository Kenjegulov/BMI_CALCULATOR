import 'package:flutter/material.dart';
import '../constants/MyColors.dart';

class Weight extends StatefulWidget {
  const Weight({super.key});

  @override
  State<Weight> createState() => _WeightState();
}

class _WeightState extends State<Weight> {
  int number = 60;
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
