import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_app/component/bottom_nav_bar.dart';
import 'package:flutter_app/constants.dart';
import 'package:flutter_app/screen/home/component/body.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: BotomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: Image.asset(
          "assets/images/menu.png",
          height: 30,
        ),
        onPressed: () {

        },
      ),
    );
  }
}