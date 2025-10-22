import 'package:flutter/material.dart';

class WidthandAge extends StatelessWidget {
  const WidthandAge({
    super.key,
    required this.text1,
    required this.value,
    required this.Add,
    required this.Remove,
  });

  final String text1;
  final int value;
  final VoidCallback Add;
  final VoidCallback Remove;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xff16172F),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            text1,
            style: const TextStyle(
              fontSize: 25,
              color: Color(0xffF1F1F1),
              fontWeight: FontWeight.w200,
            ),
          ),
          Text(
            '$value',
            style: const TextStyle(
              fontWeight: FontWeight.w200,
              color: Color(0xffF1F1F1),
              fontSize: 50,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: Remove,
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Color(0xff494E5D),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.remove, color: Colors.white),
                ),
              ),
              const SizedBox(width: 10),
              GestureDetector(
                onTap: Add,
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Color(0xff494E5D),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.add, color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
