import 'package:flutter/material.dart';
import 'package:inter_college_event/services/services.dart';
import 'package:inter_college_event/views/non_technical/bluffmaster.dart';
import 'package:inter_college_event/views/non_technical/sherlockholmes.dart';
import 'package:inter_college_event/views/non_technical/treasurehunt.dart';
import 'package:inter_college_event/views/technical/blindcoding.dart';
import 'package:inter_college_event/views/technical/innovator.dart';
import 'package:inter_college_event/views/technical/technicalquiz.dart';
import 'package:inter_college_event/views/widgets/menu.dart';
import 'package:inter_college_event/views/widgets/redtext.dart';
import 'package:inter_college_event/views/widgets/smallredtext.dart';
import 'package:inter_college_event/views/widgets/whitetext.dart';

class EventList extends StatelessWidget {
  const EventList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Menu(),
        ],
        title: WhiteText(
          text: "Events",
        ),
        backgroundColor: red,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 2.62,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24.0), color: red),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 18, 10, 0),
                      child: Text(
                        "Technical Events",
                        style: TextStyle(
                            fontFamily: 'Gothic',
                            fontWeight: FontWeight.w600,
                            fontSize: 25,
                            color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Divider(
                      thickness: 2,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)),
                        child: ListTile(
                          title: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const BlindCoding()),
                                );
                              },
                              child: Row(
                                children: [
                                  RedText(text: "</>"),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: RedText2(text: 'Blind Coding')),
                                ],
                              )),
                          trailing: IconButton(
                            icon: Icon(
                              Icons.arrow_forward_ios,
                              color: red,
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const BlindCoding()),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)),
                        child: ListTile(
                          title: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const TechQuiz()),
                                );
                              },
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.quiz_outlined,
                                    color: red,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: RedText2(text: 'Tech-Quiz')),
                                ],
                              )),
                          trailing: IconButton(
                            icon: Icon(
                              Icons.arrow_forward_ios,
                              color: red,
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const TechQuiz()),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)),
                        child: ListTile(
                          title: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Innovator()),
                                );
                              },
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.emoji_objects_outlined,
                                    color: red,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: RedText2(text: 'Innovator')),
                                ],
                              )),
                          trailing: IconButton(
                            icon: Icon(
                              Icons.arrow_forward_ios,
                              color: red,
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Innovator()),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 2.62,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24.0), color: red),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 18, 10, 0),
                      child: Text(
                        "Non-Technical Events",
                        style: TextStyle(
                            fontFamily: 'Gothic',
                            fontWeight: FontWeight.w600,
                            fontSize: 25,
                            color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Divider(
                      thickness: 2,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)),
                        child: ListTile(
                          title: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const BluffMaster()),
                                );
                              },
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.hourglass_bottom_outlined,
                                    color: red,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: RedText2(text: 'Bluff Master')),
                                ],
                              )),
                          trailing: IconButton(
                            icon: Icon(
                              Icons.arrow_forward_ios,
                              color: red,
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const BluffMaster()),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)),
                        child: ListTile(
                          title: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Sherlock()),
                                );
                              },
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.support_agent_outlined,
                                    color: red,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: RedText2(text: 'Sherlock Holmes')),
                                ],
                              )),
                          trailing: IconButton(
                            icon: Icon(
                              Icons.arrow_forward_ios,
                              color: red,
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Sherlock()),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)),
                        child: ListTile(
                          title: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const TreasureHunt()),
                                );
                              },
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.bungalow_rounded,
                                    color: red,
                                  ),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: RedText2(text: 'Treasure Hunt')),
                                ],
                              )),
                          trailing: IconButton(
                            icon: Icon(
                              Icons.arrow_forward_ios,
                              color: red,
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const TreasureHunt()),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
