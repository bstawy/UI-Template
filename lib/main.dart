import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_ui_template/layout/home_layout.dart';

import 'core/provider/application_provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => ApplicationProvider(),
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UI Template',
      initialRoute: HomeLayout.routeName,
      routes: {
        HomeLayout.routeName: (context) => HomeLayout(),
      },
    );
  }
}

