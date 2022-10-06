import 'package:flutter/material.dart';
import 'package:inter_college_event/services/services.dart';

class RedText3 extends StatelessWidget {
  final String text;
  const RedText3({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          decoration: TextDecoration.underline,
          fontFamily: 'Gothic',
          fontWeight: FontWeight.w600,
          fontSize: 20,
          color: red),
    );
  }
}
