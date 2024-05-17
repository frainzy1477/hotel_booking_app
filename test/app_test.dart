import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hotelyn/app.dart';
import 'package:hotelyn/core/domain/repository/onboarding_repository.dart';

import 'helpers/helpers.dart';

void main() {
  group('HotelynApp', () {
    late OnBoardingRepository preferenceRepository;

    setUp(() {
      preferenceRepository = MockPreferenceRepository();
    });

    testWidgets('App launches successfully', (WidgetTester tester) async {
      await tester.runAsync(() async {
        await tester.pumpWidget(
          MaterialApp(
            home: HotelynApp(
              preferenceRepository: preferenceRepository,
            ),
          ),
        );
        await tester.pumpAndSettle();
        expect(find.byType(HotelynApp), findsOneWidget);
      });
    });
  });
}
