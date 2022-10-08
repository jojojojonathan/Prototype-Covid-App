
import 'package:flutter/material.dart';
import 'package:prototype/Constants.dart';

import 'Component/body.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile", style: TextStyle(color: Colors.black),),
        backgroundColor: kPrimaryLightColor,
        iconTheme: IconThemeData(color: Colors.black)
      ),
      drawer: Drawer(),
      body: Body(),
      backgroundColor: kPrimaryLightColor,
    );
  }
}