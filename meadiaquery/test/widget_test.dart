import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:meadiaquery/Screen/login/desk.dart' as d;
import 'package:meadiaquery/Screen/login/app.dart' as m;
import 'package:meadiaquery/Utils/helpers.dart';
import 'package:meadiaquery/main.dart';

Widget getWidgetForTest(double width) {
  return MediaQuery(
    data: MediaQueryData(size: Size(width, 800)),
    child: Builder(
      builder: (context) {
        return getWidget(context, m.Mobile(), d.Destop());
      },
    ),
  );
}

void main() {
  testWidgets('App displays correct widget based on getWidget logic',
      (WidgetTester tester) async {
    // Test for desktop view
    await tester.pumpWidget(MaterialApp(
      home: getWidgetForTest(800),
    ));
    expect(find.byType(d.Destop), findsOneWidget);
    expect(find.byType(m.Mobile), findsNothing);

    // Test for mobile view
    await tester.pumpWidget(MaterialApp(
      home: getWidgetForTest(400),
    ));
    expect(find.byType(m.Mobile), findsOneWidget);
    expect(find.byType(d.Destop), findsNothing);
  });
}
