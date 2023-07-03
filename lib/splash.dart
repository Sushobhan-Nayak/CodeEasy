import 'package:flutter/material.dart';
import 'package:hello_world/homepage.dart';

class Spalsh extends StatefulWidget {
  const Spalsh({super.key});

  @override
  State<Spalsh> createState() => _SpalshState();
}

class _SpalshState extends State<Spalsh> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(const Duration(seconds: 3), () {});
    if(mounted){

    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const Homepage()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.black,
          height: MediaQuery.of(context).size.height,
          child: Image.asset('assets/images/splash.jpeg')),
    );
  }
}
