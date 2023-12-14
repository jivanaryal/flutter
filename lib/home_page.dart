import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 400,
          width: 400,
          decoration: BoxDecoration(
            color: Colors.blue,
            border: Border.all(
              color: Colors.black, // specify the color of the border
              width: 4.0, // specify the width of the border
            ),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(20),
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(40),
            ),
          ),
          child: const Text(
            "Jivan Aryal jfkaffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffi am the world have you way ",
            maxLines: 3,
            overflow: TextOverflow.fade,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
