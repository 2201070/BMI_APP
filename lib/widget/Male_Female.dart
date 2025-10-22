import 'package:flutter/material.dart';

class MaleorFemale extends StatelessWidget {
  const MaleorFemale({
    super.key,
    required this.icon,
    required this.text,
    required this.isSelected,
  });

  final IconData icon;
  final String text;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: isSelected ? Colors.pink : Color(0xff16172F),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon, size: 90, color: const Color(0xffF1F1F1)),
          Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.w200,
              color: Color(0xffF1F1F1),
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
