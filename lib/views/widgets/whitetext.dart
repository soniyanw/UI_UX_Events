import 'package:flutter/material.dart';

class WhiteText extends StatelessWidget {
  final String text;
  const WhiteText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontFamily: 'Gothic',
          fontWeight: FontWeight.w600,
          fontSize: 20,
          color: Colors.white),
    );
  }
}
