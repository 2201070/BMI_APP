import 'package:flutter/material.dart';
import 'Views/Bmi_home.dart';

void main() {
  runApp(const BMI_App());
}

class BMI_App extends StatelessWidget {
  const BMI_App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Home_page());
  }
}
