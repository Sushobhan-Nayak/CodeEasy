import 'package:flutter/material.dart';
import 'package:hello_world/quiz_view/option_validation.dart';
import 'package:hello_world/quiz_view/options_view.dart';

class Question extends StatefulWidget {
  final String que;
  final String option1;
  final String option2;
  final String option3;
  final String option4;
  final String correct;
  const Question({
    super.key,
    required this.que,
    required this.option1,
    required this.option2,
    required this.option3,
    required this.option4,
    required this.correct,
  });

  // String btnVal = 'Submit';

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  void colorValidate(String val, var clr) {
    switch (val) {
      case "1":
        {
          OptionUpdate.clr1 = clr;
        }
        break;
      case "2":
        {
          OptionUpdate.clr2 = clr;
        }
        break;
      case "3":
        {
          OptionUpdate.clr3 = clr;
        }
        break;
      case "4":
        {
          OptionUpdate.clr4 = clr;
        }
        break;
    }
  }

  void colorToDefault(String val, var clr) {
    OptionUpdate.clr1 = OptionUpdate.defaultclr;
    OptionUpdate.clr2 = OptionUpdate.defaultclr;
    OptionUpdate.clr3 = OptionUpdate.defaultclr;
    OptionUpdate.clr4 = OptionUpdate.defaultclr;
    colorValidate(val, clr);
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      height: height - height * 0.28 - 26,
      width: width - 26,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                widget.que,
                style: const TextStyle(
                  color: Colors.black,
                  height: 1.3,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            InkWell(
              onTap: () {
                OptionUpdate.whichSelected = 1;
                setState(() {
                  colorToDefault("1", OptionUpdate.selected);
                });
              },
              child: Options(
                optno: '1',
                val: widget.option1,
                clr: OptionUpdate.clr1,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            InkWell(
                onTap: () {
                  OptionUpdate.whichSelected = 2;
                  setState(() {
                    colorToDefault("2", OptionUpdate.selected);
                  });
                },
                child: Options(
                  optno: '2',
                  val: widget.option2,
                  clr: OptionUpdate.clr2,
                )),
            const SizedBox(
              height: 15,
            ),
            InkWell(
                onTap: () {
                  OptionUpdate.whichSelected = 3;
                  setState(() {
                    colorToDefault("3", OptionUpdate.selected);
                  });
                },
                child: Options(
                  optno: '3',
                  val: widget.option3,
                  clr: OptionUpdate.clr3,
                )),
            const SizedBox(
              height: 15,
            ),
            InkWell(
                onTap: () {
                  OptionUpdate.whichSelected = 4;
                  setState(() {
                    colorToDefault("4", OptionUpdate.selected);
                  });
                },
                child: Options(
                  optno: '4',
                  val: widget.option4,
                  clr: OptionUpdate.clr4,
                )),
            const SizedBox(
              height: 25,
            ),
            Center(
              child: SizedBox(
                width: 100,
                child: ElevatedButton(
                  onPressed: () {
                    if (OptionUpdate.btnVal == "Go Back") {
                      Navigator.of(context).pop();
                      return;
                    }
                    if (OptionUpdate.whichSelected == 0) {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text('Please select a option')));
                    } else {
                      colorToDefault(
                        OptionUpdate.whichSelected.toString(),
                        OptionUpdate.incorrect,
                      );
                      colorValidate(
                        widget.correct,
                        OptionUpdate.correct,
                      );
                      setState(() {
                        OptionUpdate.btnVal = "Go Back";
                      });
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[700],
                  ),
                  child: Text(
                    OptionUpdate.btnVal,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
