import 'package:flutter/material.dart';


class CustomChip extends StatelessWidget {
  const CustomChip({
    super.key,
    required this.label,
    required this.color,
  });

  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(shape: const StadiumBorder(), color: color),
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 6),
      child: Text(
        label,
        style: const TextStyle(
          fontSize: 12,
        ),
      ),
    );
  }
}
