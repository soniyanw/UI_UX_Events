import 'package:flutter/material.dart';
import 'package:inter_college_event/services/services.dart';

class BannerPage extends StatelessWidget {
  const BannerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: red,
        elevation: 2,
      ),
      backgroundColor: red,
      body: Image(
        image: AssetImage('assets/images/assetimage.png'),
        fit: BoxFit.contain,
      ),
    );
  }
}
