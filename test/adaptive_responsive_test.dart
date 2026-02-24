import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:adaptive_responsive/adaptive_responsive.dart';

void main() {
  group('AdaptiveBreakpoints', () {
    test('default breakpoints follow Material 3', () {
      const breakpoints = AdaptiveBreakpoints.standard;
      expect(breakpoints.tablet, 600);
      expect(breakpoints.desktop, 1024);
    });

    test('custom breakpoints can be set', () {
      const custom = AdaptiveBreakpoints(tablet: 500, desktop: 1200);
      AdaptiveBreakpoints.setCustom(custom);
      expect(AdaptiveBreakpoints.instance.tablet, 500);
      expect(AdaptiveBreakpoints.instance.desktop, 1200);

      // Reset to standard for other tests
      AdaptiveBreakpoints.setCustom(AdaptiveBreakpoints.standard);
    });
  });

  group('ResponsiveValue', () {
    testWidgets('returns correct value for mobile',
        (WidgetTester tester) async {
      tester.view.physicalSize = const Size(500, 1000);
      tester.view.devicePixelRatio = 1.0;

      late String result;
      await tester.pumpWidget(MaterialApp(
        home: Builder(builder: (context) {
          result = responsiveValue(
            context,
            mobile: 'mobile',
            tablet: 'tablet',
            desktop: 'desktop',
          );
          return const SizedBox();
        }),
      ));

      expect(result, 'mobile');
    });

    testWidgets('returns correct value for tablet',
        (WidgetTester tester) async {
      // 800 is between 600 and 1024
      tester.view.physicalSize = const Size(800, 1000);
      tester.view.devicePixelRatio = 1.0;

      late String result;
      await tester.pumpWidget(MaterialApp(
        home: Builder(builder: (context) {
          result = responsiveValue(
            context,
            mobile: 'mobile',
            tablet: 'tablet',
            desktop: 'desktop',
          );
          return const SizedBox();
        }),
      ));

      expect(result, 'tablet');
    });

    testWidgets('returns correct value for desktop',
        (WidgetTester tester) async {
      // 1200 is above 1024
      tester.view.physicalSize = const Size(1200, 1000);
      tester.view.devicePixelRatio = 1.0;

      late String result;
      await tester.pumpWidget(MaterialApp(
        home: Builder(builder: (context) {
          result = responsiveValue(
            context,
            mobile: 'mobile',
            tablet: 'tablet',
            desktop: 'desktop',
          );
          return const SizedBox();
        }),
      ));

      expect(result, 'desktop');
    });
  });

  group('ResponsiveLayout', () {
    testWidgets('builds mobile widget on small screens',
        (WidgetTester tester) async {
      tester.view.physicalSize = const Size(500, 1000);
      tester.view.devicePixelRatio = 1.0;

      await tester.pumpWidget(const MaterialApp(
        home: ResponsiveLayout(
          mobile: Text('Mobile Content'),
          tablet: Text('Tablet Content'),
          desktop: Text('Desktop Content'),
        ),
      ));

      expect(find.text('Mobile Content'), findsOneWidget);
      expect(find.text('Tablet Content'), findsNothing);
    });
  });
}
