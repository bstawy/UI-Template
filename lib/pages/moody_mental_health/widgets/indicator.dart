import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  bool isSelected;
  Indicator({super.key, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 7,
      height: 7,
      margin: const EdgeInsets.symmetric(horizontal: 3, vertical: 20),
      decoration: BoxDecoration(
        color: isSelected ? const Color(0xff98A2B3) : const Color(0xffD9D9D9),
        borderRadius: BorderRadius.circular(50),
      ),
    );
  }
}
