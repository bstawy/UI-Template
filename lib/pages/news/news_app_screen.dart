import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_ui_template/model/hot_topic_model.dart';
import 'package:quiz_ui_template/pages/news/widgets/custom_chip.dart';
import 'package:quiz_ui_template/pages/news/widgets/custom_search_bar.dart';
import 'package:quiz_ui_template/pages/news/widgets/hot_topic_item.dart';
import '../../core/provider/application_provider.dart';
import 'widgets/custom_app_bar.dart';

class NewsAppScreen extends StatelessWidget {
  NewsAppScreen({super.key});

  final List<HotTopicItem> hotTopics = [
    HotTopicItem(
      model: HotTopicModel(
        title: 'SELF-CARE',
        description: '10 Easy Self-Care Ideas That Can Help Boost Your Health',
        imagePath: 'assets/images/hot_topic_1.jpg',
      ),
      titleColor: const Color(0xff93370D),
      titleBackgroundColor: const Color(0xffFEF0C7),
    ),
    HotTopicItem(
      model: HotTopicModel(
        title: 'CYCLE',
        description:
            'How to take care of Menstrual Hygiene during Menstrual Cycle',
        imagePath: 'assets/images/hot_topic_2.jpg',
      ),
      titleColor: const Color(0xff912018),
      titleBackgroundColor: const Color(0xffFEE4E2),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    var appProvider = Provider.of<ApplicationProvider>(context);

    int selectedChipIndex = appProvider.selectedChip();

    final List<CustomChip> chips = [
      CustomChip(title: 'Discover', isSelected: selectedChipIndex == 0),
      CustomChip(title: 'News', isSelected: selectedChipIndex == 1),
      CustomChip(title: 'Most Viewed', isSelected: selectedChipIndex == 2),
      CustomChip(title: 'Saved', isSelected: selectedChipIndex == 3),
    ];

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          const SizedBox(height: 15),
          const CustomSearchBar(),
          const SizedBox(height: 20),
          Container(
            height: 30,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: GestureDetector(
                    onTap: () {
                      appProvider.changeChipIndex(index);
                    },
                    child: chips[index],
                  ),
                );
              },
              itemCount: chips.length,
              scrollDirection: Axis.horizontal,
            ),
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Hot topics',
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
                        color: Color(0xff5925DC),
                        fontFamily: 'Inter',
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 15,
                      color: Color(0xff5925DC),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          CarouselSlider.builder(
            itemCount: hotTopics.length,
            itemBuilder: (context, index, realIndex) => (hotTopics[index]),
            options: CarouselOptions(
              autoPlay: true,
              autoPlayAnimationDuration: const Duration(seconds: 2),
              autoPlayInterval: const Duration(seconds: 5),
              height: 160,
              viewportFraction: 1.0,
              enableInfiniteScroll: false,
              onPageChanged: (index, reason) {},
            ),
          ),
          const SizedBox(height: 24),
          const Text(
            'Get Tips',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Inter',
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 12),
          Container(
            width: double.infinity,
            height: 195,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: const Color(0xffE4E7EC),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  left: 0,
                  child: Image.asset('assets/images/doctor.png'),
                ),
                Positioned(
                  right: 0,
                  top: 24,
                  child: Container(
                    width: 160,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Connect with doctors & get suggestions',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Inter',
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Connect with doctors & get suggestions',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Inter',
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(height: 24),
                        MaterialButton(
                          onPressed: () {},
                          height: 35,
                          minWidth: 105,
                          color: const Color(0xff7F56D9),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Text(
                            'View Details',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Inter',
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Cycle Phases and Period',
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
                        color: Color(0xff5925DC),
                        fontFamily: 'Inter',
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 15,
                      color: Color(0xff5925DC),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
