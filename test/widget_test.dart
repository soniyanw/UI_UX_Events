import 'package:flutter_test/flutter_test.dart';
import 'package:inter_college_event/services/services.dart';

void main() {
  group('Launch', () {
    test('value should start as true', () {
      expect(Launch().launch, true);
    });

    test('value should be false', () {
      final launchObj = Launch();
      launchObj.makeFalse();
      expect(launchObj.launch, false);
    });

    test('value should be true', () {
      final launchObj = Launch();
      launchObj.makeTrue();
      expect(launchObj.launch, true);
    });
  });
}
