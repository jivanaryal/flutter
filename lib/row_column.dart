import 'package:flutter/material.dart';

class RowColumn extends StatelessWidget {
  const RowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 100,
          width: 200,
          color: Colors.green,
        ),
        Container(
          height: 100,
          width: 300,
          color: Colors.blue,
          child: const Text(
            "i am jivan aryafjjjjjjjjjjjjjjjjjl",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.purple,
            ),
            Container(
              height: 100,
              width: 300,
              color: Colors.lightBlue,
            ),
            Container(
              height: 100,
              width: 400,
              color: Colors.lightBlue,
            )
          ],
        )
      ],
    ));
  }
}
