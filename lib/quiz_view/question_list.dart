import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/quiz_view/card_for_question_list.dart';

class QuestionList extends StatefulWidget {
  final String topic;
  const QuestionList({super.key, required this.topic});

  @override
  State<QuestionList> createState() => _QuestionListState();
}

class _QuestionListState extends State<QuestionList> {
  @override
  Widget build(BuildContext context) {
    final Stream<QuerySnapshot> stream =
        FirebaseFirestore.instance.collection(widget.topic).snapshots();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          widget.topic,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        backgroundColor: Colors.black,
        elevation: 10,
        toolbarHeight: 60,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 12.0),
        child: StreamBuilder(
          stream: stream,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              const Text(
                'Please wait',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                ),
              );
            } else if (snapshot.hasError) {
              const Text(
                'Try later',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                ),
              );
            } else if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data?.docs.length,
                itemBuilder: (context, index) {
                  var totalQue = snapshot.data?.docs.length ?? 7;
                  var questions = snapshot.data!.docs[index];
                  return cardForQuestionList(
                    context: context,
                    index: index + 1,
                    correct: questions["correct"],
                    totalQue: totalQue,
                    title: questions["title"],
                    que: questions["question"],
                    option1: questions["option1"],
                    option2: questions["option2"],
                    option3: questions["option3"],
                    option4: questions["option4"],
                  );
                },
              );
            }
            return const Center(
              child: CircularProgressIndicator(
                backgroundColor: Colors.black,
              ),
            );
          },
        ),
      ),
    );
  }
}
