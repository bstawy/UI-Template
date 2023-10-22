import 'package:flutter/material.dart';
import 'package:quiz_ui_template/pages/workout/widgets/tab_card.dart';

class FullBodyTab extends StatelessWidget {
  const FullBodyTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          TabCard(
            title: 'Morning Yoga',
            description: 'Improve mental focus.',
            dayDuration: '7 days',
            timeDuration: '30 mins',
            imagePath: 'assets/images/yoga_exercise.png',
            color: Color(0xffECFDF3),
          ),
          TabCard(
            title: 'Plank Exercise',
            description: 'Improve posture and stability.',
            dayDuration: '3 days',
            timeDuration: '30 mins',
            imagePath: 'assets/images/plank_exercise.png',
            color: Color(0xffECFDF3),
          ),
          TabCard(
            title: 'Morning Yoga',
            description: 'Improve mental focus.',
            dayDuration: '12 days',
            timeDuration: '1 hour',
            imagePath: 'assets/images/yoga_exercise.png',
            color: Color(0xffECFDF3),
          ),
          TabCard(
            title: 'Plank Exercise',
            description: 'Improve posture and stability.',
            dayDuration: '25 days',
            timeDuration: '10 mins',
            imagePath: 'assets/images/plank_exercise.png',
            color: Color(0xffECFDF3),
          ),
        ],
      ),
    );
  }
}
