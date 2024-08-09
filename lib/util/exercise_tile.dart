import 'package:flutter/material.dart';

class ExerciseTile extends StatelessWidget {
  final String exerciseNames;
  final String exerciseIcon;
  final int exerciseCount;
  const ExerciseTile(
      {super.key,
      required this.exerciseNames,
      required this.exerciseIcon,
      required this.exerciseCount});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(15)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.orange[600]),
                      child: Text(exerciseIcon)),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        exerciseNames,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 3),
                      Text("${exerciseCount} Exercise",
                          style: const TextStyle(fontSize: 12)),
                    ],
                  ),
                ],
              ),
              const Icon(Icons.more_horiz)
            ],
          )),
    );
  }
}
