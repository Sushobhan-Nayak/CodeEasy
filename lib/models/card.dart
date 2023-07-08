import 'package:flutter/material.dart';
import 'package:hello_world/quiz_view/question_list.dart';
import 'dart:math';

class CardScreen extends StatefulWidget {
  final String topic;
  const CardScreen({super.key, required this.topic});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  List colors = [
    Colors.red,
    Colors.deepPurple,
    Colors.green,
    Colors.brown,
    Colors.blue,
    Colors.grey,
  ];

  @override
  Widget build(BuildContext context) {
    Random random = Random();
    int randomnumber = random.nextInt(colors.length);
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        color: colors[randomnumber],
        child: Column(
          children: <Widget>[
            ListTile(
              leading: const Icon(
                Icons.quiz_sharp,
                color: Colors.white,
              ),
              title: Text(
                widget.topic,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                OutlinedButton(
                    style: ButtonStyle(
                        side: MaterialStateProperty.all(const BorderSide(
                            color: Colors.white,
                            width: 1.0,
                            style: BorderStyle.solid))),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => QuestionList(
                                topic: widget.topic,
                              )));
                    },
                    child: const Text(
                      'START QUIZ',
                      style: TextStyle(color: Colors.white),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
