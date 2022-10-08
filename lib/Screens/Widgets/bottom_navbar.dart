import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:prototype/Constants.dart';
import 'package:prototype/Screens/Home/Home_screen.dart';
import 'package:prototype/Screens/Info/Info_Screen.dart';
import 'package:prototype/Screens/User/Profile_screen.dart';
import 'package:prototype/Screens/Vaccine/Registration.dart';

class BottomNavBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BottomNavBarState();
  }
}

class BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;

  final screens = [HomeScreen(), InfoScreen(), RegistrationScreen(),ProfileScreen()];

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Icon(
        Icons.home,
        size: 30,
      ),
      Icon(
        Icons.info,
        size: 30,
      ),
      Icon(
        Icons.calendar_month,
        size: 30,
      ),
      Icon(
        Icons.account_circle_rounded,
        size: 30,
      ),
    ];

    return Container(
      color: kPrimaryLightColor,
      child: SafeArea(
        top: false,
        child: Scaffold(
          extendBody: true,
          body: screens[currentIndex],
          bottomNavigationBar: Theme(
            data: Theme.of(context)
                .copyWith(iconTheme: IconThemeData(color: kPrimaryLightColor)),
            child: CurvedNavigationBar(
              backgroundColor: Colors.transparent,
              buttonBackgroundColor: kPrimaryColor,
              color: kPrimaryColor,
              height: 60,
              animationCurve: Curves.easeInOut,
              animationDuration: Duration(milliseconds: 300),
              index: currentIndex,
              items: items,
              onTap: (index) => setState(() => this.currentIndex = index),
            ),
          ),
        ),
      ),
    );
  }
}
