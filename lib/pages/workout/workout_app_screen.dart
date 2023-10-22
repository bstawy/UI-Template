import 'package:flutter/material.dart';
import 'package:quiz_ui_template/pages/workout/widgets/all_type_tab.dart';
import 'package:quiz_ui_template/pages/workout/widgets/custom_app_bar.dart';
import 'package:quiz_ui_template/pages/workout/widgets/full_body_tab.dart';
import 'package:quiz_ui_template/pages/workout/widgets/info_card.dart';
import 'package:quiz_ui_template/pages/workout/widgets/lower_tab.dart';
import 'package:quiz_ui_template/pages/workout/widgets/upper_tab.dart';

class WorkoutAppScreen extends StatelessWidget {
  WorkoutAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          SizedBox(height: 15),
          InfoCard(),
          SizedBox(height: 24),
          Text(
            'Workout Programs',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Inter',
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 15),
          TabBar(
            indicatorColor: Color(0xff363F72),
            labelColor: Color(0xff363F72),
            labelStyle: TextStyle(
              fontFamily: 'Inter',
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
            unselectedLabelColor: Color(0xff667085),
            unselectedLabelStyle: TextStyle(
              fontFamily: 'Inter',
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
            labelPadding: EdgeInsets.zero,
            tabs: [
              Tab(
                text: 'All Type',
              ),
              Tab(
                text: 'Full Body',
              ),
              Tab(
                text: 'Upper',
              ),
              Tab(
                text: 'Lower',
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: [
                AllTypeTab(),
                FullBodyTab(),
                UpperTab(),
                LowerTab(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
