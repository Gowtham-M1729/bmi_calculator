import 'package:flutter/material.dart';
import 'package:bmi_calculator/Screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.amber[900],
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        accentColor: Colors.red[800],
      ),
      home: InputPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
