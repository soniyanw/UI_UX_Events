import 'package:flutter/material.dart';
import 'package:inter_college_event/services/services.dart';

class RedText2 extends StatelessWidget {
  final String text;
  const RedText2({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontFamily: 'Gothic',
          fontWeight: FontWeight.w400,
          fontSize: 20,
          color: red),
    );
  }
}
