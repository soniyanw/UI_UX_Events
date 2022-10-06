import 'package:flutter/material.dart';
import 'package:inter_college_event/services/services.dart';
import 'package:inter_college_event/views/widgets/redtext.dart';
import 'package:inter_college_event/views/widgets/whitetext.dart';

class TreasureHunt extends StatelessWidget {
  const TreasureHunt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: WhiteText(
          text: "Treasure Hunt",
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
                            "In treasure hunt, participants work in small teams to find the treasure with thehelp of given clues. The team who decodes the clue and finds the treasure first will win thegame. The game of treasure hunt comes from the concept of scavenger hunting whereparticipants have to find number of items from the list provided to them. ")
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
                            "1. Each team should consist of 4 members.\n2. One person cannot be the member of more than one team."),
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
