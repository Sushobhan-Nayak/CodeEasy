import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:hello_world/screens/article.dart';
import 'package:hello_world/screens/homescreen.dart';
import 'package:hello_world/screens/profilepage.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int index = 0;
  final screens = [
    const HomeScreen(),
    const ArticleScreen(),
    const ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      const Icon(
        Icons.home,
        size: 30,
      ),
      const Icon(
        Icons.article,
        size: 30,
      ),
      const Icon(
        Icons.account_circle_rounded,
        size: 30,
      )
    ];
    return Scaffold(
        extendBody: true,
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.black,
            title: const Text('HelloWorld')),
        body: screens[index],
        bottomNavigationBar: Theme(
          data: Theme.of(context)
              .copyWith(iconTheme: const IconThemeData(color: Colors.white)),
          child: CurvedNavigationBar(
            color: Colors.black,
            height: 60,
            buttonBackgroundColor: Colors.cyan,
            index: index,
            animationCurve: Curves.easeInOut,
            animationDuration: const Duration(milliseconds: 500),
            backgroundColor: Colors.transparent,
            items: items,
            onTap: (index) => setState(() => this.index = index),
          ),
        ));
  }
}
