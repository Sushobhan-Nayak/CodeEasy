import 'dart:async';

import 'package:flutter/material.dart';

import 'package:hello_world/quiz_view/question_view.dart';

class QuizScreen extends StatefulWidget {
  final String que;
  final String option1;
  final String option2;
  final String option3;
  final String option4;
  final int index;
  final int totalQue;
  final String correct;
  const QuizScreen({
    super.key,
    required this.correct,
    required this.que,
    required this.option1,
    required this.option2,
    required this.option3,
    required this.option4,
    required this.index,
    required this.totalQue,
  });

  @override
  State<QuizScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<QuizScreen> {
  int clr = 0xffffffff;
  int value = 1;
  void setTimeValue() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        value++;
      });
    });
  }

  @override
  void initState() {
    setTimeValue();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    String timeFormater() {
      String min = '0${(value ~/ 60)}';
      String sec = '0${(value % 60)}';
      int sz = min.length;
      min = min.substring(sz - 2);
      sz = sec.length;
      sec = sec.substring(sz - 2);

      return '$min:$sec';
    }

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: height * 0.08,
            left: 15,
            child: Text(
              'Question ${widget.index.toString()}/${widget.totalQue.toString()}',
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w200,
                  fontSize: 30),
            ),
          ),
          Positioned(
            top: height * 0.23,
            right: 32,
            child: Row(
              children: [
                Image.asset(
                  'assets/images/time.png',
                  width: 22,
                  height: 22,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  timeFormater(),
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
          ),
          Positioned(
            top: height * 0.28,
            child: Padding(
              padding: const EdgeInsets.all(13.0),
              child: Question(
                  correct: widget.correct,
                  que: widget.que,
                  option1: widget.option1,
                  option2: widget.option2,
                  option3: widget.option3,
                  option4: widget.option4),
            ),
          ),
        ],
      ),
    );
  }
}
