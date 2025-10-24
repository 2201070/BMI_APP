import 'package:flutter/material.dart';
import 'Male_Female.dart';

class SelectGender extends StatefulWidget {
  const SelectGender({super.key});

  @override
  State<SelectGender> createState() => _SelectGenderState();
}

class _SelectGenderState extends State<SelectGender> {
  bool isMaleSelected = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                isMaleSelected = true;
              });
            },
            child: MaleorFemale(
              text: "MALE",
              icon: Icons.male,
              color: isMaleSelected
                  ? const Color(0xff17172f)
                  : const Color(0xff090B24),
            ),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                isMaleSelected = false;
              });
            },
            child: MaleorFemale(
              text: "FEMALE",
              icon: Icons.female,
              color: isMaleSelected
                  ? const Color(0xff090B24)
                  : const Color(0xff17172f),
            ),
          ),
        ),
      ],
    );
  }
}
