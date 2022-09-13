import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

void main() => runApp(MyWidget());

class MyWidget extends StatefulWidget {
  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  final nameApp = ' SFuverce';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(nameApp),
        ),
        body: Column(
          children: <Widget>[
            // Badge(
            //   badgeContent: Text('3'),
            //   child: Icon(Icons.settings),
            //   animationType: BadgeAnimationType.scale,
            // ),
          ],
        ),
        bottomNavigationBar: ConvexAppBar.badge(
          {0: '99+', 1: Icons.assistant_photo, 2: Colors.redAccent},
          items: [
            TabItem(icon: Icons.home, title: 'Home'),
            TabItem(icon: Icons.shopping_cart, title: 'Cart'),
            TabItem(icon: Icons.payment, title: 'Payment'),
            TabItem(icon: Icons.message, title: 'Message'),
            TabItem(icon: Icons.people, title: 'Profile'),
          ],
        ),
      ),
    );
  }
}
