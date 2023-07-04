import 'package:flutter/material.dart';

class CardScreen extends StatefulWidget {
  final String topic;
  const CardScreen({super.key, required this.topic});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: const <Widget>[
          ListTile(
            title: Text(topic),
          )
        ],
      ),
    );
  }
}
