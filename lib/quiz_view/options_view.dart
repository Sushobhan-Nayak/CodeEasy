import 'package:flutter/material.dart';

class Options extends StatefulWidget {
  final String optno;
  final String val;
  final int clr;
  const Options(
      {super.key, required this.optno, required this.val, required this.clr});

  @override
  State<Options> createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.only(left: 18, right: 18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color(widget.clr),
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
              '${widget.optno}.',
              style: const TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          Text(
            widget.val,
            style: const TextStyle(
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

// Widget optionView(String optNo, String val) {
//   return Container(
//     height: 50,
//     margin: const EdgeInsets.only(left: 18, right: 18),
//     decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(15),
//       color: Color(widget.clr),
//       border: Border.all(
//         color: Colors.black,
//       ),
//     ),
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.start,
//       children: [
//         Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             '${widget.optNo}.',
//             style: const TextStyle(
//               color: Colors.black,
//             ),
//           ),
//         ),
//         Text(
//           widget.val,
//           style: const TextStyle(
//             color: Colors.black,
//           ),
//         ),
//       ],
//     ),
//   );
// }
