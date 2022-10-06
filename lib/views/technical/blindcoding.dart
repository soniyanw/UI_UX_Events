import 'package:flutter/material.dart';
import 'package:inter_college_event/services/services.dart';
import 'package:inter_college_event/views/widgets/redtext.dart';
import 'package:inter_college_event/views/widgets/whitetext.dart';

class BlindCoding extends StatelessWidget {
  const BlindCoding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: WhiteText(
          text: "Blind Coding",
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
                            "This is an induvidual event. The compiler provided will be Java,Python,C,C++,Ruby.\nThis event consists of 2 rounds.")
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 30, 10, 10),
                child: Column(
                  children: [
                    Text(
                      "Rules",
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
                            "Each participant has to write the code for given problem, with MONITOR OFF.\nParticipants whose code gets executed will be given higher preference.\nThe second preference will be given to code with least number of errors.\nIn case of tie in number of errors, TIME of SUBMISSION will be considered.")
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
