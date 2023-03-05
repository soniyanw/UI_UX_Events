import 'package:flutter/material.dart';
import 'package:inter_college_event/services/services.dart';
import 'package:inter_college_event/views/widgets/redtext.dart';
import 'package:inter_college_event/views/widgets/whitetext.dart';

class Terms extends StatelessWidget {
  Terms({Key? key}) : super(key: key);
  String text =
      "* The number of participants from each college is limited to 15 students.\n\n* Each participant should carry identity proof.\n\n* Students taking part in the events should register on the day of the fest at th registration committee. On spot entry is not obliged.\n\n* Students should refrain from abusive language, obscene display an revealing costumes during the competitions, failing which they will bedisqualified.\n\n* Smoking, drinking and consumption of any such 'substances' are prohibited.\n\n* The judges’ decision is final.\n\n* Participants should go through the event rules and adhere to the specifics.Participation, props, music etc for certain events should be confirmed Preregistration if required by contacting the event head.\n\n* A participant can participate only in one event during the simultaneoustimings for events; a participant is not restricted to participation in anynumber of events as long as the event timings do not clash.\n\n* All the events will commence at the scheduled time; Punctuality will beappreciated.\n\n* Rules are subject to changes at the discretion of theManagement/Organizers.\n\n* Criteria for Overall championship include participation in maximumnumber of events as well as the total scores obtained in the competitions.End";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: WhiteText(
            text: "Terms and Conditions",
          ),
          backgroundColor: red,
        ),
        body: SingleChildScrollView(
          key: const Key("scroll"),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: RedText(text: "Terms are:"),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: 2000,
                  child: Column(children: [RedText(text: text)]),
                ),
              ),
            ],
          ),
        ));
  }
}
