import 'package:flutter/material.dart';
import '../Constants/Font_size.dart';

class WidthandAge extends StatefulWidget {
  final String text1;
  final int initialValue;
  final Function(int)? onValueChanged;
  const WidthandAge({
    super.key,
    required this.text1,
    this.initialValue = 70,
    this.onValueChanged,
  });

  @override
  State<WidthandAge> createState() => _WidthandAgeState();
}

class _WidthandAgeState extends State<WidthandAge> {
  late int value;

  @override
  void initState() {
    super.initState();
    value = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xff090b24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(widget.text1, style: AppStyles.fontsize25),
          Text('$value', style: AppStyles.fontsize50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                mini: true,
                backgroundColor: const Color(0xff494E5D),
                onPressed: () {
                  setState(() {
                    value--;
                  });
                },
                child: const Icon(Icons.remove, color: Colors.white),
              ),
              const SizedBox(width: 10),
              FloatingActionButton(
                mini: true,
                backgroundColor: const Color(0xff494E5D),
                onPressed: () {
                  setState(() {
                    value++;
                  });
                },
                child: const Icon(Icons.add, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
