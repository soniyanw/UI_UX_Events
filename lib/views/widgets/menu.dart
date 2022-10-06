import 'package:flutter/material.dart';
import 'package:inter_college_event/views/banner.dart';
import 'package:inter_college_event/views/contactus.dart';
import 'package:inter_college_event/views/terms_and_conditions.dart';
import 'package:inter_college_event/views/widgets/smallredtext.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void handleClick(int item) {
      switch (item) {
        case 1:
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Terms()),
          );
          break;
        case 4:
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ContactUs()),
          );
          break;
        case 5:
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const BannerPage()),
          );
          break;
      }
    }

    return PopupMenuButton<int>(
        onSelected: (item) => handleClick(item),
        itemBuilder: (context) => [
              PopupMenuItem<int>(
                  value: 1, child: RedText2(text: 'Terms and Conditions')),
              PopupMenuItem<int>(value: 4, child: RedText2(text: 'Contact Us')),
              PopupMenuItem<int>(value: 5, child: RedText2(text: 'Banner')),
            ]);
  }
}
