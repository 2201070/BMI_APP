import 'package:flutter/material.dart';

class Height extends StatelessWidget {
  const Height({super.key, required this.height, required this.onChanged});

  final double height;
  final Function(double) onChanged;

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
          const Text(
            'HEIGHT',
            style: TextStyle(
              fontWeight: FontWeight.w200,
              color: Color(0xff828393),
              fontSize: 20,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                height.toStringAsFixed(1),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                " cm",
                style: TextStyle(color: Colors.grey, fontSize: 18),
              ),
            ],
          ),
          Slider(
            value: height,
            min: 50,
            max: 300,
            activeColor: Colors.pink,
            thumbColor: Colors.pink,
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }
}
