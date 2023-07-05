import 'package:flutter/material.dart';
import 'package:hello_world/quiz_view/quiz_screen.dart';

class CardScreen extends StatefulWidget {
  final String topic;
  const CardScreen({super.key, required this.topic});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        child: Column(
          children: <Widget>[
            ListTile(
              leading: const Icon(Icons.quiz),
              title: Text(
                widget.topic,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                OutlinedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const QuizScreen()));
                    },
                    child: const Text('START QUIZ'))
              ],
            ),],
        ),
      ),
    );
  }
}
