import 'package:flutter/material.dart';
import 'package:inter_college_event/services/services.dart';
import 'package:inter_college_event/views/widgets/redtext.dart';
import 'package:inter_college_event/views/widgets/whitetext.dart';

class BluffMaster extends StatelessWidget {
  const BluffMaster({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: WhiteText(
          text: "Bluff Master",
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
                            "Random questions with 10 possible answers will be asked- answers ranging from most typical to unconventional. Your aim is to give unconventional answers but if you are the bluff master team, you should answer in such a way that your fellow teams do not become suspicious"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 30, 10, 10),
                child: Column(
                  children: [
                    Text(
                      "Team Rules",
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
                            "1. Team should consist of 2 members.\n2. Team members can be either from same institute or from different institutes.\n3. One person cannot be the member of more than one team."),
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
