import 'package:flutter/material.dart';

class FeatureModel{
  String title;
  String description;
  String time;
  String imagePath;
  Color color;

  FeatureModel({
    required this.title,
    required this.description,
    required this.time,
    required this.imagePath,
    required this.color,
  });
}