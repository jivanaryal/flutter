// import 'package:first_app/home_page.dart';
import 'package:first_app/box_design.dart';
import 'package:first_app/buttons_widget.dart';
// import 'package:first_app/home_page.dart';
// import 'package:first_app/row_column.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const MyHomePage(),

      home: ButtonWidget(),
    );
  }
}
