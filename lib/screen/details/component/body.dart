import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/constants.dart';
import 'package:flutter_app/screen/details/component/title_and_price.dart';
import 'icon_card.dart';
import 'image_and_icon.dart';

class BodyDetail extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget> [
          ImageAndIcons(),
          TitleAndPrice(title: "Angelica", country: "Russia", price: 440,),
          SizedBox(height: kDefaultPadding,),
          Row(
            children: <Widget> [
              SizedBox(
                width: size.width/2,
                height: 80,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                    ),
                  ),
                  color: kPrimaryColor,
                  onPressed: () {

                  },
                  child: Text(
                    "Buy now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40)
                    ),
                  ),
                  child: FlatButton(
                    onPressed: () {

                    },
                    child: Text(
                      "Description",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.green,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}