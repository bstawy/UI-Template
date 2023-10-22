import 'package:flutter/material.dart';
import 'package:quiz_ui_template/pages/moody_mental_health/moody_app_screen.dart';
import 'package:quiz_ui_template/pages/news/news_app_screen.dart';
import 'package:quiz_ui_template/pages/profile/profile_screen.dart';
import '../core/provider/application_provider.dart';
import 'package:provider/provider.dart';

import '../pages/workout/workout_app_screen.dart';

class HomeLayout extends StatelessWidget {
  static const String routeName = 'HomeLayout';
  HomeLayout({super.key});

  final List<Widget> pages = [
    MoodyAppScreen(),
    WorkoutAppScreen(),
    NewsAppScreen(),
    ProfileScreen(),
  ];


  @override
  Widget build(BuildContext context) {
    var appProvider = Provider.of<ApplicationProvider>(context);
    return Scaffold(
      /*appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 65,
        leading: Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Image.asset(
            'assets/images/moody_app_logo.png',
          ),
        ),
        title: const Text(
          'Moody',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.w400,
          ),
        ),
        centerTitle: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: IconButton(
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
          ),
        ],
      ),*/
      body: Padding(
        padding: const EdgeInsets.only(top: 15, left: 25, right: 25),
        child: pages[appProvider.selectedPageIndex()],
      ),
      bottomNavigationBar: BottomAppBar(
        height: 80,
        elevation: 25,
        color: Colors.white,
        child: BottomNavigationBar(
          onTap: (index) {
            appProvider.changeBottomNavBarIndex(index);
            appProvider.changeCurrentPageIndex(index);
          },
          type: BottomNavigationBarType.fixed,
          currentIndex: appProvider.selectedBottomNavBarIndex(),
          backgroundColor: Colors.white,
          elevation: 0,
          selectedIconTheme: const IconThemeData(
            color: Color(0xff027A48),
            size: 24,
          ),
          unselectedIconTheme: const IconThemeData(
            color: Color(0xff667085),
            size: 24,
          ),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/home.png')),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/category.png')),
              label: 'Category',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/calendar.png')),
              label: 'Calender',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/user.png')),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
