import 'package:flutter/material.dart';

class InfoCardField extends StatelessWidget {
  final String iconPath;
  final String title;
  final String value;

  const InfoCardField({
    super.key,
    required this.iconPath,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset(iconPath),
            SizedBox(
              width: 5
            ),
            Text(
              title,
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Inter',
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              value.substring(0, value.indexOf(' '),),
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Inter',
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              value.substring(value.indexOf(' ') +1),
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Inter',
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
