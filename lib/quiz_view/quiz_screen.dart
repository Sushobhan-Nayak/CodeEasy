import 'package:flutter/material.dart';
import 'package:hello_world/quiz_view/options_view.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _MyWidgetState();
}

//!  agar teko ajeeb lge thoda to position  , padding vgrah apne hisaab se krdena....
class _MyWidgetState extends State<QuizScreen> with TickerProviderStateMixin {
  late AnimationController controller; // for progressbar
  int clr =
      0xffffffff; // color for options bg....we will handle it by statemanagement
  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 20),
    )..addListener(() {
        setState(() {});
      });
    controller.repeat();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
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
            top: height *
                0.13, //! was looking good in my phone in both mode(landscape ,potrait)..you can change if required
            width: width,
            child: Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  border: Border.all(color: Colors.black, width: 3.0)),
              //! progress bar is for 20 seconds.....after learning bit more about animation I will try to display number of seconds remaining inside the bar itself
              child: LinearProgressIndicator(
                minHeight: 20,
                color: Colors.greenAccent,
                value: controller.value,
                backgroundColor: Colors.transparent,
              ),
            ),
          ),
          Positioned(
            top: height * 0.132,
            right: 32,
            child: Image.asset(
              'assets/images/time.png',
              width: 22,
              height: 22,
              color: Colors.white,
            ),
          ),
          Positioned(
            top: height * 0.2,
            left: 20,
            child: const Text(
              'Question 1/4',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w200,
                  fontSize: 30),
            ),
          ),
          Positioned(
            top: height * 0.28,
            child: Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                height: height - height * 0.28 - 26,
                width: width - 26,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: SingleChildScrollView(
                  //! because in landscape column was overflowing so i used scrollview
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(18.0),
                        child: Text(
                          'Who is greatest of all time in Cricket?',
                          style: TextStyle(
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
                      //! For now I wrapped them all in InkWell and if anyone of them in selected color for all option will change...we will hadle it by statemanagement
                      InkWell(
                        onTap: () {
                          setState(
                            () {
                              clr = 0xff808080;
                            },
                          );
                        },
                        child: optionView('1', 'Virat Kohli', clr),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      InkWell(
                          onTap: () {
                            setState(
                              () {
                                clr = 0xff808080;
                              },
                            );
                          },
                          child: optionView('2', 'AB De Villiars', clr)),
                      const SizedBox(
                        height: 18,
                      ),
                      InkWell(
                          onTap: () {
                            setState(
                              () {
                                clr = 0xff808080;
                              },
                            );
                          },
                          child: optionView('3', 'MS. Dhoni', clr)),
                      const SizedBox(
                        height: 18,
                      ),
                      InkWell(
                          onTap: () {
                            setState(
                              () {
                                clr = 0xff808080;
                              },
                            );
                          },
                          child: optionView('4', 'Sachin Tendhulkar', clr)),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
