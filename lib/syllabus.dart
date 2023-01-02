import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class syllabus extends StatefulWidget {
  const syllabus({Key? key}) : super(key: key);

  @override
  State<syllabus> createState() => _syllabusState();
}

class _syllabusState extends State<syllabus> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/below.png'),
              fit: BoxFit.scaleDown,
            ),
          ),
        ),
         Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/E7.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),

      ],
    );
  }
}
