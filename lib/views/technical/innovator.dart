import 'package:flutter/material.dart';
import 'package:inter_college_event/services/services.dart';
import 'package:inter_college_event/views/widgets/redtext.dart';
import 'package:inter_college_event/views/widgets/whitetext.dart';

class Innovator extends StatelessWidget {
  const Innovator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: WhiteText(
          text: "Innovator",
        ),
        backgroundColor: red,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 30, 10, 10),
                child: Column(
                  children: [
                    Text(
                      "About",
                      style: TextStyle(
                          fontFamily: 'Gothic',
                          fontWeight: FontWeight.w600,
                          fontSize: 30,
                          color: red),
                    ),
                    Divider(
                      color: red,
                      thickness: 1.5,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RedText(
                        text:
                            "Presentation of Technical Innovative idea using graphical means (MS-Powerpoint, Autocad or any 3D/2D representation etc.\nThe event possess two rounds.\n1. Elimination round(Presentation)\n2. Cross Questioning")
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 30, 10, 10),
                child: Column(
                  children: [
                    Text(
                      "Judgement Criteria",
                      style: TextStyle(
                          fontFamily: 'Gothic',
                          fontWeight: FontWeight.w600,
                          fontSize: 30,
                          color: red),
                    ),
                    Divider(
                      color: red,
                      thickness: 1.5,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RedText(
                        text:
                            "1. Area of Implementation.\n2. Future Scope.\n3. Presentation.\n4. Justification of Idea.")
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 16, 16),
        child: MaterialButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
          color: red,
          onPressed: () {
            launchURLto();
          },
          elevation: 20,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Register Now",
              style: TextStyle(
                  fontFamily: 'Gothic',
                  fontWeight: FontWeight.w600,
                  fontSize: 25,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
