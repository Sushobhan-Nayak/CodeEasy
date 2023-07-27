import 'package:flutter/material.dart';
import 'package:hello_world/quiz_view/question_list.dart';

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
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Theme.of(context).colorScheme.primary,
        child: Column(
          children: <Widget>[
            ListTile(
              leading: const Icon(
                Icons.quiz_sharp,
              ),
              title: Text(
                widget.topic,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: OutlinedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Theme.of(context).colorScheme.secondary),
                          side: MaterialStateProperty.all(const BorderSide())),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => QuestionList(
                                  topic: widget.topic,
                                )));
                      },
                      child: Text(
                        'START QUIZ',
                        style: TextStyle(color: Theme.of(context).colorScheme.tertiary),
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
