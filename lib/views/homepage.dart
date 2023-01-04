import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:inter_college_event/services/services.dart';
import 'package:inter_college_event/views/event_list.dart';
import 'package:inter_college_event/views/event_schedule.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedPage = 0;

  final _pageOptions = [EventList(), EventSchedule()];

  @override
  void initState() {
    super.initState();
    initialization();
  }

  void initialization() async {
    await Future.delayed(const Duration(seconds: 1));
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: red,
        /* appBar: AppBar(
          actions: [
            MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.white, width: 3.0)),
              color: red,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const EventList()),
                );
              },
              elevation: 20,
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Text(
                  "View Events ",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: 'Gothic',
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Menu(),
          ],
          title: WhiteText(
            text: "Home",
          ),
          backgroundColor: red,
        ),*/
        body: _pageOptions[selectedPage],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.list_alt_outlined, size: 30),
                label: 'Event list'),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month_rounded, size: 30),
                label: 'Schedule'),
          ],
          selectedItemColor: Colors.white,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          elevation: 5.0,
          unselectedItemColor: Colors.white60,
          currentIndex: selectedPage,
          backgroundColor: red,
          onTap: (index) {
            setState(() {
              selectedPage = index;
            });
          },
        ));
  }
}
