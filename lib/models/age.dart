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
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: MyColor.bacbackgroundColorCard,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "WEIGHT",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            Text(
              "$number",
              style: const TextStyle(fontSize: 40, fontWeight: FontWeight.w800),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 45,
                  height: 45,
                  child: FloatingActionButton(
                    backgroundColor: MyColor.grey,
                    onPressed: () {
                      setState(() {
                        number++;
                      });
                    },
                    child: const Icon(Icons.add, color: MyColor.white),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: 45,
                  height: 45,
                  child: FloatingActionButton(
                    backgroundColor: MyColor.grey,
                    onPressed: () {
                      setState(() {
                        number--;
                      });
                    },
                    child: const Icon(Icons.remove, color: MyColor.white),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
