import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:inter_college_event/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('end-to-end test', () {
    testWidgets('integration test', (tester) async {
      app.main();

      await tester.pumpAndSettle();
      //check for Technical events in homepage
      final Finder findtechnical = find.text('Technical Events');
      expect(findtechnical, findsOneWidget);
      await tester.pumpAndSettle();

      //tap on menu
      final Finder popup = find.byTooltip('popup');
      await tester.tap(popup);
      await tester.pumpAndSettle();

      //tap on terms and conditions in menu and ensure that it opens
      final termsAndConditionsFinder = find.text('Terms and Conditions');
      await tester.tap(termsAndConditionsFinder);
      await tester.pumpAndSettle();
      expect(termsAndConditionsFinder, findsOneWidget);
      await tester.pumpAndSettle();

      //come back to home page
      await tester.tap(find.byType(BackButton));
      await tester.pumpAndSettle();

      //tap on menu
      await tester.tap(popup);
      await tester.pumpAndSettle();

      //tap on contacts in menu and ensure that it opens
      final contacts = find.text('Contact Us');
      await tester.tap(contacts);
      await tester.pumpAndSettle();
      expect(contacts, findsOneWidget);
      await tester.pumpAndSettle();

      //come back to home page
      await tester.tap(find.byType(BackButton));
      await tester.pumpAndSettle();

      //search for an event named blindcoding and tap on it
      final Finder event = find.byTooltip('blindcoding');
      await tester.tap(event);
      await tester.pumpAndSettle();

      //find the register button for event
      final reg = find.byType(MaterialButton);
      expect(reg, findsOneWidget);
      await tester.pumpAndSettle();

      //come back to homepage
      await tester.tap(find.byType(BackButton));
      await tester.pumpAndSettle();

      //ensure that homepage is reached
      expect(findtechnical, findsOneWidget);
      await tester.pumpAndSettle();

      //click on schedule in bottom nav bar
      final schedule = find.byKey(Key('schedule'));
      await tester.tap(schedule);
      await tester.pumpAndSettle();

      //click back to homepage in bottom nav bar
      final list = find.byKey(Key('list'));
      await tester.tap(list);
      await tester.pumpAndSettle();

      //ensure homepage is reached
      expect(findtechnical, findsOneWidget);
    });
  });
}
