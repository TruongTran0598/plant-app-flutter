import 'package:flutter/material.dart';
import '../../../constants.dart';
import 'icon_card.dart';

class ImageAndIcons extends StatelessWidget{
  const ImageAndIcons({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding*3),
      child: SizedBox(
        height: size.height*0.8,
        child: Row(
          children: <Widget> [
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: kDefaultPadding*3),
                  child: Column(
                    children: <Widget> [
                      Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                          icon: Image.asset("assets/images/back.png"),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Spacer(),
                      IconCard(image: "assets/images/sun.png",),
                      IconCard(image: "assets/images/humidity.png",),
                      IconCard(image: "assets/images/drop.png",),
                      IconCard(image: "assets/images/wind.png",),
                    ],
                  ),
                )
            ),

            Container(
              height: size.height*0.8,
              width: size.width*0.75,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(65),
                    bottomLeft: Radius.circular(65),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 60,
                      color: kPrimaryColor.withOpacity(0.3),
                    ),
                  ],
                  image: DecorationImage(
                    image: AssetImage("assets/images/img.png"),
                    fit: BoxFit.cover,
                    alignment: Alignment.centerLeft,
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}