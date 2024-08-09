import 'package:flutter/material.dart';

class EmotIcon extends StatelessWidget {
  final String emojIcons;
  final String emojIconsText;
  const EmotIcon(
      {super.key, required this.emojIcons, required this.emojIconsText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.blue.shade600,
              borderRadius: BorderRadius.circular(10)),
          child: Text(
            emojIcons,
            style: const TextStyle(fontSize: 25),
          ),
        ),
        const SizedBox(height: 10),
        Text(emojIconsText,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold))
      ],
    );
  }
}
