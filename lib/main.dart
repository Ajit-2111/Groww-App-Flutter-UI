import 'package:flutter/material.dart';
import 'package:hello/AppData/constants.dart';
import 'package:hello/Widgets/custom_scroll_behaviour.dart';
import 'package:hello/Widgets/main_bottom_navigation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Swipe Tabs Example',
      scrollBehavior: CustomScrollBehavior(),
      theme: ThemeData(
        scaffoldBackgroundColor: ColorConstants.background,
      ),
      debugShowCheckedModeBanner: false,
      home: const MainNavigationScreen(),
    );
  }
}
