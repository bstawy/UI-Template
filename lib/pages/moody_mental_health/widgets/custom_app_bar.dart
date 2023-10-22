import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        children: [
          Image.asset(
            'assets/images/moody_app_logo.png',
            width: 35,
            height: 35,
            fit: BoxFit.cover,
          ),
          const SizedBox(width: 10),
          const Text(
            'Moody',
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.w400,
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Badge(
              backgroundColor: Colors.red,
              smallSize: 10,
              child: ImageIcon(
                AssetImage('assets/images/notification_icon.png'),
                size: 24,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
