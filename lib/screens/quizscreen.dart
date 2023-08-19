import 'package:flutter/material.dart';
import 'package:hello_world/models/card.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Quiz")),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: ListView(
        children: const [
          CardScreen(
            topic: 'ARRAYS',
          ),
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
