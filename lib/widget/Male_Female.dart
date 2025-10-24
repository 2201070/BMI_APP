import 'package:flutter/material.dart';
import '../Constants/Font_size.dart';

class MaleorFemale extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color color;

  const MaleorFemale({
    super.key,
    required this.text,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: color,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 90, color: const Color(0xffF1F1F1)),
          const SizedBox(height: 10),
          Text(text, style: AppStyles.fontsize20),
        ],
      ),
    );
  }
}
