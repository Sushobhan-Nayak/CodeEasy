import 'package:flutter/material.dart';
import 'package:hello_world/quiz_view/option_validation.dart';
import 'package:hello_world/quiz_view/quiz_screen.dart';

Widget cardForQuestionList({
  required int index,
  required BuildContext context,
  required String title,
  required String que,
  required String option1,
  required String option2,
  required String option3,
  required String option4,
  required int totalQue,
  required String correct,
}) {
  return Padding(
    padding: const EdgeInsets.only(
      left: 2.0,
    ),
    child: Column(
      children: [
        Container(
          height: 67,
          decoration: const BoxDecoration(
            color: Color(
              0xffffffff,
            ),
          ),
          child: Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              Text(
                "$index.",
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                title,
              ),
              const Expanded(
                child: SizedBox(),
              ),
              OutlinedButton(
                onPressed: () async {
                  await Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => QuizScreen(
                        correct: correct,
                        que: que,
                        option1: option1,
                        option2: option2,
                        option3: option3,
                        option4: option4,
                        index: index,
                        totalQue: totalQue,
                      ),
                    ),
                  );
                  OptionUpdate.whichSelected = 0;
                  OptionUpdate.clr1 = OptionUpdate.defaultclr;
                  OptionUpdate.clr2 = OptionUpdate.defaultclr;
                  OptionUpdate.clr3 = OptionUpdate.defaultclr;
                  OptionUpdate.clr4 = OptionUpdate.defaultclr;
                  OptionUpdate.btnVal = 'Submit';
                },
                child: const Text(
                  'Attempt',
                  style: TextStyle(
                    color: Color(
                      0xffdd0000,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
        const Divider(
          color: Colors.black,
          thickness: 0.2,
          height: 2,
          endIndent: 2.2,
        ),
      ],
    ),
  );
}
