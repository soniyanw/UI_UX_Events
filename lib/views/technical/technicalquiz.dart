import 'package:flutter/material.dart';
import 'package:inter_college_event/services/services.dart';
import 'package:inter_college_event/views/widgets/redtext.dart';
import 'package:inter_college_event/views/widgets/whitetext.dart';

class TechQuiz extends StatelessWidget {
  const TechQuiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: WhiteText(
          text: "Tech-Quiz",
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
                      "About and Rules",
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
                            "1.Participants have to register as a team of two before the deadline.\n2 .The event will have 2 rounds in total which will be held in googlemeet.\n3. 1st round will be open for all the teams which will be conducted in google form.\n4. The round 2 will be a live session conducted in google meet.\n5. The top 4 teams will be qualified for the final round.\n6. The winner and runner will be awarded with cash prize.\n7. Both the team members should turn on the camera while answering .\n8. Questions will be from mechanical engineering and general aptitude.")
                  ],
                ),
              ),
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
