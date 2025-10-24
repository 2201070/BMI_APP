import 'package:flutter/material.dart';
import '../Constants/Font_size.dart';

class Height extends StatefulWidget {
  final int Heightt;
  final Function(double) onHeightChanged;

  const Height({
    super.key,
    required this.Heightt,
    required this.onHeightChanged,
  });

  @override
  State<Height> createState() => _HeightState();
}

class _HeightState extends State<Height> {
  late double height;

  @override
  void initState() {
    super.initState();
    height = widget.Heightt.toDouble();
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
          const SizedBox(height: 10),
          Text('HEIGHT', style: AppStyles.fontsize26),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                height.toStringAsFixed(1),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                " cm",
                style: TextStyle(color: Colors.grey, fontSize: 23),
              ),
            ],
          ),
          Slider(
            value: height,
            min: 50,
            max: 220,
            activeColor: Colors.pink,
            thumbColor: Colors.pink,
            onChanged: (value) {
              setState(() {
                height = value;
                widget.onHeightChanged(height);
              });
            },
          ),
        ],
      ),
    );
  }
}
