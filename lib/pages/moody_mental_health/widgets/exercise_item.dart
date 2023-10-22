import 'package:flutter/material.dart';
import '../../../model/exercise_model.dart';

class ExerciseItem extends StatelessWidget {
  final ExerciseModel model;
  const ExerciseItem({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 55,
      padding: const EdgeInsets.only(left: 16),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: model.color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Image.asset(model.imagePath),
          const SizedBox(width: 12),
          Text(
            model.title,
            style: const TextStyle(
              color: Colors.black,
              fontFamily: 'Inter',
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
