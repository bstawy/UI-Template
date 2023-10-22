import 'package:flutter/material.dart';

class FeelingItem extends StatelessWidget {
  final String title;
  final String iconPath;
  const FeelingItem({super.key, required this.title, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 88,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: Color(0xffE4E7EC),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Image.asset(
              iconPath,
              width: 40,
              height: 40,
            ),
          ),
          Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontFamily: 'Inter',
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
