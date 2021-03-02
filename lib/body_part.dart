import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class BodyPart extends StatefulWidget {
  @override
  _BodyPartState createState() => _BodyPartState();
}

class _BodyPartState extends State<BodyPart> {
  Widget firstlist(String imgVal, String text) {
    return Container(
      width: 80.0,
      child: Column(
        children: <Widget>[
          Card(
            child: Image.asset(imgVal),
          ),
          Text(
            text,
            style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          height: 125.38,
          color: Colors.white,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              firstlist("images/Image 9.png", "Prime"),
              firstlist("images/image 1.png", "Pantry"),
              firstlist("images/image 2.png", "Mobile"),
              firstlist("images/image 3.png", "Fashion"),
              firstlist("images/Image 4.png", "Home"),
              firstlist("images/Image 5.png", "Appliances"),
              firstlist("images/Image 6.png", "Electronic"),
            ],
          ),
        ),
        Center(
          child: Container(
            height: MediaQuery.of(context).size.height / 4,
            padding: EdgeInsets.all(10.0),
            child: Carousel(
              showIndicator: false,
              boxFit: BoxFit.cover,
              images: [
                AssetImage("images/image 1.png"),
                AssetImage("images/image 2.png"),
                AssetImage("images/image 3.png"),
                AssetImage("images/Image 4.png"),
                AssetImage("images/Image 5.png"),
                AssetImage("images/Image 6.png"),
                AssetImage("images/Image 7.png"),
                AssetImage("images/Image 8.png"),
                AssetImage("images/Image 9.png"),
              ],
            ),
          ),
        )
      ],
    );
  }
}
