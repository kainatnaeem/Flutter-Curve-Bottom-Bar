import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:curvednavigationbarflutter/screens/add.dart';
import 'package:curvednavigationbarflutter/screens/home.dart';
import 'package:curvednavigationbarflutter/screens/profile.dart';
import 'package:curvednavigationbarflutter/screens/search.dart';
import 'package:curvednavigationbarflutter/screens/settings.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  final navigationKey = GlobalKey<CurvedNavigationBarState>();

  final screens = [
    const Home(),
    const Search(),
    const Add(),
    const Profile(),
    const Setting(),
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      const Icon(Icons.home, size: 30),
      const Icon(Icons.search, size: 30),
      const Icon(Icons.add, size: 30),
      const Icon(Icons.person, size: 30),
      const Icon(Icons.settings, size: 30),
    ];

    return Scaffold(
      backgroundColor: Colors.green,
      bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            iconTheme: const IconThemeData(
              color: Colors.lightGreen,
            ),
          ),
          child: CurvedNavigationBar(
            key: navigationKey,
            backgroundColor: Colors.black38,
            height: 60,
            index: index,
            items: items,
            onTap: (index) => setState(() => this.index = index),
          )),
      body: screens[index],
    );
  }
}
