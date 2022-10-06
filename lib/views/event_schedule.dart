import 'package:flutter/material.dart';
import 'package:inter_college_event/services/services.dart';
import 'package:inter_college_event/views/widgets/menu.dart';
import 'package:inter_college_event/views/widgets/redtext.dart';
import 'package:inter_college_event/views/widgets/smallredtext.dart';
import 'package:inter_college_event/views/widgets/whitetext.dart';

class EventSchedule extends StatelessWidget {
  const EventSchedule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Menu(),
        ],
        title: WhiteText(
          text: "Events Schedule",
        ),
        backgroundColor: red,
      ),
      body: SingleChildScrollView(
        child: Center(
            child: Column(children: <Widget>[
          Container(
            margin: EdgeInsets.all(20),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(120.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 2),
              children: [
                TableRow(children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(children: [RedText(text: 'EVENTS')]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(children: [RedText(text: 'ROUND 1')]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(children: [RedText(text: 'ROUND 2')]),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(children: [RedText2(text: 'Blind-Coding')]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(children: [RedText2(text: 'Oct 8-FN')]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(children: [RedText2(text: 'Oct 10-FN')]),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(children: [RedText2(text: 'Tech-Quiz')]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(children: [RedText2(text: 'Oct 9-FN')]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(children: [RedText2(text: 'Oct 11-FN')]),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(children: [RedText2(text: 'Innovator')]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(children: [RedText2(text: 'Oct 8-AN')]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(children: [RedText2(text: 'Oct 10-AN')]),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(children: [RedText2(text: 'Bluff Master')]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(children: [RedText2(text: 'Oct 9-AN')]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(children: [RedText2(text: '-')]),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child:
                        Column(children: [RedText2(text: 'Sherlock Holmes')]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(children: [RedText2(text: 'Oct 12')]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(children: [RedText2(text: '-')]),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(children: [RedText2(text: 'Treasure Hunt')]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(children: [RedText2(text: 'Oct 11-AN')]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(children: [RedText2(text: '-')]),
                  ),
                ]),
              ],
            ),
          ),
          RedText(text: "FN - ForeNoon"),
          SizedBox(
            height: 16,
          ),
          RedText(text: "AN - AfterNoon")
        ])),
      ),
    );
  }
}
