import 'package:amazon_clone/Category_Screen.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  Widget tiles(String name, IconData icon, Function fun) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        FlatButton.icon(
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => widget)),
          icon: Icon(
            icon,
            color: Colors.blueGrey,
          ),
          label: Text(
            name,
            style: TextStyle(color: Colors.blueGrey),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          height: 50.0,
          alignment: Alignment.centerLeft,
          color: Colors.greenAccent,
          child: ListTile(
            leading: Icon(
              Icons.person_rounded,
              color: Colors.blueGrey,
            ),
            title: Text(
              "PROFILE",
              style: TextStyle(color: Colors.blueGrey),
            ),
            onTap:()=> Navigator.pop(context),
          ),
        ),
        tiles("Shop Category", Icons.category, ()=> print("Category")),
        tiles("Deals", Icons.local_offer, () => print("Offer")),
        Divider(),
        tiles("Your Order", Icons.card_giftcard_outlined,
            () => print("My Order")),
        tiles("Your Wish List", Icons.favorite, () => print("Wishlist")),
        tiles("Your Account", Icons.account_circle_rounded,
            () => print("Account")),
        tiles("Amazon Pay", Icons.payment_outlined, () => print("Payment")),
        tiles("Try Prime", Icons.connected_tv, () => print("Prime")),
        tiles("Sell On Amazon", Icons.shopping_basket, () => print("Sell")),
        Divider(),
        tiles("Language", Icons.language, () => print("Language")),
        tiles("Your Notification", Icons.notification_important,
            () => print("Notification")),
        tiles("Setting", Icons.settings, () => print("Setting")),
        tiles("Customer Service", Icons.home_repair_service,
            () => print("Service")),
      ],
    );
  }
}
