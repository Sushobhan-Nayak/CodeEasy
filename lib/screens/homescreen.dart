import 'package:flutter/material.dart';
import 'package:hello_world/models/card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          CardScreen(topic: 'ARRAYS'),
          CardScreen(topic: 'STRINGS'),
          CardScreen(topic: 'BINARY SEARCH'),
          CardScreen(topic: 'POINTERS'),
          CardScreen(topic: 'RECURSION'),
          CardScreen(topic: 'DP'),
          CardScreen(topic: 'STACKS'),
          CardScreen(topic: 'TREES')
        ],
      ),
    );
  }
}
