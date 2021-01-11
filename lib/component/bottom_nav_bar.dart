import 'package:flutter/material.dart';

import '../constants.dart';

class BotomNavBar extends StatelessWidget{
  const BotomNavBar ({
    Key key,
  }): super (key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        right: kDefaultPadding*2,
        left: kDefaultPadding*2,
      ),
      height: 60,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -10),
              blurRadius: 35,
              color: kPrimaryColor.withOpacity(0.38),
            ),
          ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget> [
          IconButton(
            icon: Image.asset("assets/images/lotus.png"),
            onPressed: () {

            },
          ),

          IconButton(
            icon: Image.asset("assets/images/heart.png"),
            onPressed: () {

            },
          ),

          IconButton(
            icon: Image.asset("assets/images/user.png"),
            onPressed: () {

            },
          ),
        ],
      ),
    );
  }
}