import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants.dart';
import '../screens/newsfeed_screen.dart';
import '../widgets/custom_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App Bar
      appBar: AppBar(
        shadowColor: fbTextColorWhite,
        elevation: 2,
        title: CustomText(
          text: 'facebook',
          fontSize: ScreenUtil().setSp(25),
          color: fbPrimary,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.bold,
        ),
      ),

      // Page View
      body: PageView(
        controller: _pageController,
        children: const <Widget>[
          NewsFeedScreen(),
          Center(child: Text('Notifications')),
        ],
        onPageChanged: (page) {
          setState(() {
            selectedIndex = page;
          });
        },
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: fbPrimary,
        currentIndex: selectedIndex,
        onTap: onTappedBar,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
        ],
      ),
    );
  }

  // Bottom Navigation Bar Function
  void onTappedBar(int value) {
    setState(() {
      selectedIndex = value;
    });

    _pageController.jumpToPage(value);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
