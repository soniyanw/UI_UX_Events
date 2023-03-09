/*
import 'package:flutter_test/flutter_test.dart';
import 'package:inter_college_event/main.dart';
import 'package:patrol/patrol.dart';

void main() {
  patrolTest(
    'counter is incremented when plus button is tapped',
    nativeAutomation: true,
    (PatrolTester $) async {
      await $.pumpWidget(const MyApp());
      // prepare network conditions
      await $.native.enableCellular();
      //await $.native.disableWifi();

      // toggle system theme
      //await $.native.enableDarkMode();

      // handle native location permission request dialog
      //await $.native.selectFineLocation();
      //await $.native.grantPermissionWhenInUse();

      // tap on the first notification
      await $.native.openNotifications();
      await $.native.tapOnNotificationByIndex(0);

      expect($('Technical Events'), findsOneWidget);
      expect($('-1'), findsNothing);
    },
  );
}*/
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:inter_college_event/main.dart';
import 'package:patrol/patrol.dart';

void main() {
  patrolTest(
    'counter state is the same after going to home and switching apps',
    nativeAutomation: true,
    ($) async {
      await $.pumpWidgetAndSettle(const MyApp());
      expect($('Technical Events'), findsOneWidget);
      await $(#popup).tap();
      expect($('Terms and Conditions'), findsOneWidget);
      await $('Terms and Conditions').tap();
      await $(BackButton).tap();
      await $(#popup).tap();
      await $('Contact Us').tap();
      await $(BackButton).tap();
      expect($('Technical Events'), findsOneWidget);
      await $(#schedule).tap();
      await $(#list).tap();
      await $(#blindcoding).tap();
      await $(MaterialButton).tap();
      await $.native.pressHome();
      await $.native.openNotifications();
    },
  );
}
