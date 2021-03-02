import 'package:amazon_clone/First Screen.dart';
import 'package:flutter/material.dart';
import 'package:amazon_clone/body_part.dart';

void main() => runApp(
      AmazonClone(),
    );

class AmazonClone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AMAZON CLONE',
      theme: ThemeData.light(),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.greenAccent,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              "amazon",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black87,
                fontSize: 25.0,
              ),
            ),
            Text(
              ".in",
              style: TextStyle(fontSize: 15.0, color: Colors.black87),
            ),
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.mic),
            onPressed: () => print("Open Mic"),
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () => print("Open Shopping Cart"),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Container(
              color: Colors.white,
              child: TextFormField(
                decoration: InputDecoration(
                    hintStyle: TextStyle(
                      fontSize: 15.0,
                    ),
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search For Product,Brands & More",
                    border: InputBorder.none),
              ),
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: FirstScreen(),
      ),
      body: BodyPart(),
    );
  }
}
