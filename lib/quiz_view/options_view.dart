import 'package:flutter/material.dart';

Widget optionView(String optNo, String val, int clr) {
  // var clr = 0xffffffff;
  return Container(
    height: 50,
    margin: const EdgeInsets.only(left: 18, right: 18),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: Color(clr),
      border: Border.all(
        color: Colors.black,
      ),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            '$optNo.',
            style: const TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        Text(
          val,
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
      ],
    ),
  );
}
