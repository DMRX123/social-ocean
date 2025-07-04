import 'package:flutter/material.dart';

class BadgeDisplay extends StatelessWidget {
  final String badgeName;
  final String imagePath;

  const BadgeDisplay({
    Key? key,
    required this.badgeName,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(imagePath),
          radius: 28,
        ),
        const SizedBox(height: 6),
        Text(
          badgeName,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
        ),
      ],
    );
  }
}
// Badge Display Widget
