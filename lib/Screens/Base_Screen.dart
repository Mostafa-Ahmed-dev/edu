import 'package:eduapp/Screens/FeaturedScreen.dart';
import 'package:eduapp/constants/color.dart';
import 'package:eduapp/constants/icons.dart';
import 'package:eduapp/constants/size.dart';
import 'package:flutter/material.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  static const List<Widget> _widgets = [
    FeaturedScreen(),
    FeaturedScreen(),
    FeaturedScreen(),
    FeaturedScreen(),
  ];
  int _selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgets[_selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: kPrimaryColor,
        backgroundColor: Colors.white,
        elevation: 0,
        items: [
          BottomNavigationBarItem(
              activeIcon: Image.asset(
                icFeatured,
                height: kBottomNavigationBarItemSize,
              ),
              icon: Image.asset(
                icFeaturedOutlined,
                height: kBottomNavigationBarItemSize,
              ),
              label: 'Featured'),
          BottomNavigationBarItem(
              activeIcon: Image.asset(
                icLearning,
                height: kBottomNavigationBarItemSize,
              ),
              icon: Image.asset(
                icLearningOutlined,
                height: kBottomNavigationBarItemSize,
              ),
              label: 'My Learing'),
          BottomNavigationBarItem(
              activeIcon: Image.asset(
                icWishlist,
                height: kBottomNavigationBarItemSize,
              ),
              icon: Image.asset(
                icWishlistOutlined,
                height: kBottomNavigationBarItemSize,
              ),
              label: 'Wish List'),
          BottomNavigationBarItem(
              activeIcon: Image.asset(
                icSetting,
                height: kBottomNavigationBarItemSize,
              ),
              icon: Image.asset(
                icSettingOutlined,
                height: kBottomNavigationBarItemSize,
              ),
              label: 'Settings'),
        ],
        currentIndex: _selectedindex,
        onTap: (value) {
          setState(
            () {
              _selectedindex = value;
            },
          );
        },
      ),
    );
  }
}
