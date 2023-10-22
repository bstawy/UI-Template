import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_ui_template/pages/moody_mental_health/widgets/feature_item.dart';
import 'package:quiz_ui_template/pages/moody_mental_health/widgets/custom_app_bar.dart';
import 'package:quiz_ui_template/pages/moody_mental_health/widgets/feeling_item.dart';
import 'package:quiz_ui_template/pages/moody_mental_health/widgets/exercise_item.dart';
import 'package:quiz_ui_template/pages/moody_mental_health/widgets/indicator.dart';
import '../../core/provider/application_provider.dart';
import '../../model/exercise_model.dart';
import '../../model/feature_model.dart';

class MoodyAppScreen extends StatelessWidget {
  MoodyAppScreen({super.key});

  final List<FeatureModel> featureCards = [
    FeatureModel(
      title: 'Positive vibes',
      description: 'Positive your mood with positive vibes',
      time: '10 min',
      color: const Color(0xffECFDF3),
      imagePath: 'assets/images/walking_dog.png',
    ),
    FeatureModel(
      title: 'Positive vibes',
      description: 'Positive your mood with positive vibes',
      time: '5 min',
      color: const Color(0xffF9F5FF),
      imagePath: 'assets/images/walking_dog.png',
    ),
    FeatureModel(
      title: 'Positive vibes',
      description: 'Positive your mood with positive vibes',
      time: '15 min',
      color: const Color(0xffFDF2FA),
      imagePath: 'assets/images/walking_dog.png',
    ),
  ];

  final List<ExerciseModel> exerciseCards = [
    ExerciseModel(
      title: 'Relaxation',
      color: const Color(0xffF9F5FF),
      imagePath: 'assets/images/relaxation.png',
    ),
    ExerciseModel(
      title: 'Meditation',
      color: const Color(0xffFDF2FA),
      imagePath: 'assets/images/meditation.png',
    ),
    ExerciseModel(
      title: 'Breathing',
      color: const Color(0xffFFFAF5),
      imagePath: 'assets/images/breathing.png',
    ),
    ExerciseModel(
      title: 'Yoga',
      color: const Color(0xffF0F9FF),
      imagePath: 'assets/images/yoga.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    var appProvider = Provider.of<ApplicationProvider>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomAppBar(),
        const Row(
          children: [
            Text(
              'Hello, ',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Inter',
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              'Sara Rose',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Inter',
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        const Text(
          'How are you feeling today ?',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Inter',
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 12),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FeelingItem(
              title: 'Love',
              iconPath: 'assets/images/love_icon.png',
            ),
            FeelingItem(
              title: 'Cool',
              iconPath: 'assets/images/cool_icon.png',
            ),
            FeelingItem(
              title: 'Happy',
              iconPath: 'assets/images/happy_icon.png',
            ),
            FeelingItem(
              title: 'Sad',
              iconPath: 'assets/images/sad_icon.png',
            ),
          ],
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Feature',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Inter',
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: const Row(
                children: [
                  Text(
                    'See more',
                    style: TextStyle(
                      color: Color(0xff027A48),
                      fontFamily: 'Inter',
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 15,
                    color: Color(0xff027A48),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        CarouselSlider.builder(
          itemCount: featureCards.length,
          itemBuilder: (context, index, realIndex) =>
              (FeatureItem(model: featureCards[index])),
          options: CarouselOptions(
            autoPlay: true,
            autoPlayAnimationDuration: const Duration(seconds: 2),
            autoPlayInterval: const Duration(seconds: 5),
            height: 170,
            viewportFraction: 1.0,
            enableInfiniteScroll: false,
            onPageChanged: (index, reason) {
              appProvider.changeCarouselIndex(index);
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < featureCards.length; i++)
              Indicator(isSelected: appProvider.selectedCarouselIndex() == i),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Exercise',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Inter',
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: const Row(
                children: [
                  Text(
                    'See more',
                    style: TextStyle(
                      color: Color(0xff027A48),
                      fontFamily: 'Inter',
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 15,
                    color: Color(0xff027A48),
                  ),
                ],
              ),
            ),
          ],
        ),
        Expanded(
          child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 6 / 2,
              crossAxisSpacing: 24,
              mainAxisSpacing: 16,
            ),
            padding: const EdgeInsets.only(top: 15),
            children: [
              for(int i=0; i<exerciseCards.length; i++)
                ExerciseItem(model: exerciseCards[i]),
            ],
          ),
        )
      ],
    );
  }
}
