import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/services.dart';
import 'package:hello_world/screens/article.dart';
import 'package:hello_world/screens/homescreen.dart';
import 'package:hello_world/screens/profilepage.dart';
import 'package:hello_world/theme/changethemebutton.dart';

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
  bool isDark = false;
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
        backgroundColor: Theme.of(context).colorScheme.background,
        extendBody: true,
        appBar: AppBar(
            actions: const [
              ChangeThemeButton(),
            ],
            systemOverlayStyle:  SystemUiOverlayStyle(statusBarColor: Theme.of(context).appBarTheme.backgroundColor),
            centerTitle: true,
            backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
            title: const Text('HelloWorld')),
        body: screens[index],
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
              iconTheme: IconThemeData(
                  color: Theme.of(context).appBarTheme.foregroundColor)),
          child: CurvedNavigationBar(
            color: Theme.of(context).colorScheme.background,
            height: 60,
            buttonBackgroundColor: Theme.of(context).colorScheme.background,
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
