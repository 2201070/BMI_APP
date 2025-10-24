import 'package:bmi_app/widget/selectgender.dart';
import 'package:flutter/material.dart';
import '../Constants/Font_size.dart';
import '../widget/Height.dart';
import '../widget/Counter_Width_Age.dart';
import 'Result.dart';

class Home_page extends StatefulWidget {
  const Home_page({super.key});

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  double height = 174;
  int weight = 70;

  double calculateBMI(double height, int weight) {
    double userHeight = height / 100;
    return weight / (userHeight * userHeight);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff04061D),
      appBar: AppBar(
        backgroundColor: const Color(0xff04061D),
        title: Text('BMI CALCULATOR', style: AppStyles.fontsize17),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SelectGender(),
            const SizedBox(height: 30),
            Height(
              Heightt: height.toInt(),
              onHeightChanged: (newHeight) {
                setState(() {
                  height = newHeight;
                });
              },
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                Expanded(
                  child: WidthandAge(
                    text1: "WEIGHT",
                    initialValue: weight,
                    onValueChanged: (newWeight) {
                      setState(() {
                        weight = newWeight;
                      });
                    },
                  ),
                ),
                const SizedBox(width: 10),
                const Expanded(child: WidthandAge(text1: "AGE")),
              ],
            ),
            const SizedBox(height: 60),
            Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextButton(
                onPressed: () {
                  double result = calculateBMI(height, weight);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ResultPage(bmiResult: result);
                      },
                    ),
                  );
                },
                child: const Text(
                  "CALCULATE",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
