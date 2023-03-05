import 'package:flutter/material.dart';
import 'package:inter_college_event/services/services.dart';
import 'package:inter_college_event/views/widgets/redtext.dart';
import 'package:inter_college_event/views/widgets/whitetext.dart';

class EventsList extends StatelessWidget {
  const EventsList({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> events = List<String>.generate(100, (i) => 'Event No $i');

    return Scaffold(
      appBar: AppBar(
        backgroundColor: red,
        title: WhiteText(
          text: "Events",
        ),
      ),
      body: ListView.builder(
        key: const Key('event_list'),
        itemCount: 100,
        itemBuilder: (context, index) {
          return ListTile(
            title: RedText(
              text: events[index],
              key: Key('${index}_element'),
            ),
          );
        },
      ),
    );
  }
}
