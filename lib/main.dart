import 'package:bmi_app/widget/Result.dart';
import 'package:flutter/material.dart';
import 'widget/Male_Female.dart';
import 'widget/Height.dart';
import 'widget/Width_Age.dart';

void main() {
  runApp(const BMI_App());
}

class BMI_App extends StatelessWidget {
  const BMI_App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BMIScreen(),
    );
  }
}

class BMIScreen extends StatefulWidget {
  const BMIScreen({super.key});

  @override
  State<BMIScreen> createState() => _BMIScreenState();
}

class _BMIScreenState extends State<BMIScreen> {
  bool? isMale;
  double height = 174;
  int weight = 60;
  int age = 30;

  double calculateBMI() {
    double heightt = height / 100;
    return weight / (heightt * heightt);
  }

  void goToResultPage(BuildContext context) {
    double result = calculateBMI();
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return ResultPage(bmiResult: result);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff04061D),
      appBar: AppBar(
        backgroundColor: const Color(0xff04061D),
        title: const Text(
          'BMI CALCULATOR',
          style: TextStyle(
            fontSize: 17,
            color: Color(0xffF1F1F1),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isMale = true;
                      });
                    },
                    child: MaleorFemale(
                      icon: Icons.male,
                      text: 'MALE',
                      isSelected: isMale == true,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isMale = false;
                      });
                    },
                    child: MaleorFemale(
                      icon: Icons.female,
                      text: 'FEMALE',
                      isSelected: isMale == false,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Expanded(
              child: Height(
                height: height,
                onChanged: (value) {
                  setState(() {
                    height = value;
                  });
                },
              ),
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                Expanded(
                  child: WidthandAge(
                    text1: 'WEIGHT',
                    value: weight,
                    Add: () {
                      setState(() {
                        weight++;
                      });
                    },
                    Remove: () {
                      setState(() {
                        weight--;
                      });
                    },
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: WidthandAge(
                    text1: 'AGE',
                    value: age,
                    Add: () {
                      setState(() {
                        age++;
                      });
                    },
                    Remove: () {
                      setState(() {
                        age--;
                      });
                    },
                  ),
                ),
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
                  goToResultPage(context);
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
            SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
