import 'package:flutter/material.dart';

class WidthandAge extends StatelessWidget {
  const WidthandAge({
    super.key,
    required this.text1,
    required this.value,
    required this.onAdd,
    required this.onRemove,
  });

  final String text1;
  final int value;
  final VoidCallback onAdd;
  final VoidCallback onRemove;

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
              FloatingActionButton(
                mini: true,
                backgroundColor: Color(0xff16172F),
                onPressed: onRemove,
                child: const Icon(Icons.remove, color: Color(0xffF1F1F1)),
              ),
              const SizedBox(width: 10),
              FloatingActionButton(
                mini: true,
                backgroundColor: Color(0xff16172F),
                onPressed: onAdd,
                child: const Icon(Icons.add, color: Color(0XFFF1F1F1)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
