import 'package:flutter/material.dart';
import 'package:quiz_ui_template/pages/workout/widgets/info_card_field.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      padding: const EdgeInsets.all(16),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: const Color(0xffF8F9FC),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const InfoCardField(
            iconPath: 'assets/images/heart.png',
            title: 'Heart Rate',
            value: '81 BPM',
          ),
          Container(
            width: 1,
            height: double.infinity,
            color: const Color(0xffD9D9D9),
          ),
          const InfoCardField(
            iconPath: 'assets/images/list.png',
            title: 'To-do',
            value: '32,5 %',
          ),
          Container(
            width: 1,
            height: double.infinity,
            color: const Color(0xffD9D9D9),
          ),
          const InfoCardField(
            iconPath: 'assets/images/calories_icon.png',
            title: 'Calo',
            value: '1000 Cal',
          ),
        ],
      ),
    );
  }
}
