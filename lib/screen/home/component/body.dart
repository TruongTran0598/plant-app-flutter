import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/screen/home/component/recomands_plants.dart';
import 'package:flutter_app/screen/home/component/title_with_more_btn.dart';
import '../../../constants.dart';
import 'featured_plant.dart';
import 'header_with_searchbox.dart';

class Body extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    //this size it will provie us total
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget> [
          HeaderWithSearchBox(size: size),
          TitelWithMoreBtn(
            title: "Recomended",
            press: (){

            },
          ),
          RecomandsPlants(),
          TitelWithMoreBtn(
            title: "Featured Plants",
            press: (){
              
            },
          ),
          FeaturedPlant(),
          SizedBox(height: kDefaultPadding,),
        ],
      ),
    );
  }
}