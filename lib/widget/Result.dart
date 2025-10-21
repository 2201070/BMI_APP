import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final double bmiResult;
  const ResultPage({super.key, required this.bmiResult});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff04061D),
      appBar: AppBar(
        backgroundColor: const Color(0xff04061D),
        title: const Text('BMI RESULT', style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: Text(
          'BMI = ${bmiResult.toStringAsFixed(2)}',
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
