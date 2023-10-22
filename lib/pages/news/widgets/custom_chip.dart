import 'package:flutter/material.dart';

class CustomChip extends StatelessWidget {
  final String title;
  final bool isSelected;

  const CustomChip({
    super.key,
    required this.title,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      padding: const EdgeInsets.only(bottom: 5, left: 5, right: 5),
      label: Text(title),
      labelStyle: TextStyle(
        color: isSelected ? const Color(0xff6941C6) : const Color(0xffA1A4B2),
        fontFamily: 'Inter',
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      backgroundColor: isSelected ? const Color(0xffF4EBFF) : Colors.transparent,
      elevation: 0,
      side: BorderSide(
        color: isSelected ? const Color(0xffD6BBFB) : const Color(0xffE4E7EC),
      ),
    );
  }
}
