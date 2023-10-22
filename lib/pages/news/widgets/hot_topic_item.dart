import 'package:flutter/material.dart';
import 'package:quiz_ui_template/model/hot_topic_model.dart';

class HotTopicItem extends StatelessWidget {
  final HotTopicModel model;
  final Color titleColor;
  final Color titleBackgroundColor;

  const HotTopicItem({
    super.key,
    required this.model,
    required this.titleColor,
    required this.titleBackgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(model.imagePath),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            width: double.infinity,
            height: 60,
          ),
          Container(
            width: double.infinity,
            height: 100,
            padding: const EdgeInsets.only(left: 24,right: 24, top: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: const LinearGradient(
                colors: [
                  Colors.black,
                  Colors.transparent,
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 87,
                  height: 23,
                  decoration: BoxDecoration(
                    color: titleBackgroundColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text(
                      model.title,
                      style: TextStyle(
                        color: titleColor,
                        fontFamily: 'Inter',
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  model.description,
                  style: const TextStyle(
                    color: Color(0xFFFCFCFD),
                    fontFamily: 'Inter',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
