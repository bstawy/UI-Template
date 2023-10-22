import 'package:flutter/material.dart';

class TabCard extends StatelessWidget {
  final String title;
  final String description;
  final String dayDuration;
  final String timeDuration;
  final String imagePath;
  final Color color;

  const TabCard({
    super.key,
    required this.title,
    required this.description,
    required this.dayDuration,
    required this.timeDuration,
    required this.imagePath,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 170,
      padding: const EdgeInsets.only(top: 24, left: 16, bottom: 12, right: 10),
      margin: const EdgeInsets.only(top: 24),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(
        children: [
          Positioned(
            child: Image.asset(imagePath),
            right: 0,
            bottom: 0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 65,
                height: 35,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: const Color(0xffFCFCFD),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Text(
                  dayDuration,
                  style: const TextStyle(
                    color: Colors.black,
                    fontFamily: 'Inter',
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Text(
                title,
                style: const TextStyle(
                  color: Colors.black,
                  fontFamily: 'Inter',
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                description,
                style: const TextStyle(
                  color: Colors.black,
                  fontFamily: 'Inter',
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.access_time_rounded,
                    color: Colors.black,
                    size: 16,
                  ),
                  const SizedBox(width: 5),
                  Text(
                    timeDuration,
                    style: const TextStyle(
                      color: Colors.black,
                      fontFamily: 'Inter',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),
            ],
          ),
        ],
      ),
    );
  }
}
