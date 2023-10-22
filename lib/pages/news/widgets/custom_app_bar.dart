import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/flower.png',
            width: 24,
            height: 24,
            fit: BoxFit.cover,
          ),
          const SizedBox(width: 10),
          const Text(
            'AliceCare',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Milonga',
              fontSize: 24,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
