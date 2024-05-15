import 'package:flutter/material.dart';
import 'package:flutter_incremental_app_using_tdd/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('MyHomePage test', (widgetTester) async {
    await widgetTester.pumpWidget(const MaterialApp(
      home: MyHomePage(
        title: 'title from test',
      ),
    ));

    final titleWidget = find.byKey(MyHomePage.titleKey).evaluate().single.widget as Text;
    expect(titleWidget.data, 'title from test');

    final counterWidget = find.byKey(MyHomePage.counterKey).evaluate().single.widget as Text;
    expect(counterWidget.data, '0');

    final incrementButton = find.byKey(MyHomePage.incrementKey);

    await widgetTester.tap(incrementButton);
    await widgetTester.pump();
    final counterWidgetAfterIncrement = find.byKey(MyHomePage.counterKey).evaluate().single.widget as Text;
    expect(counterWidgetAfterIncrement.data, '1');

    final decrementButton = find.byKey(MyHomePage.decrementKey);
    await widgetTester.tap(decrementButton);
    await widgetTester.pump();
    final counterWidgetAfterDecrement = find.byKey(MyHomePage.counterKey).evaluate().single.widget as Text;
    expect(counterWidgetAfterDecrement.data, '0');

    final increaseTwoButton = find.byKey(MyHomePage.increaseTwoKey);
    await widgetTester.tap(increaseTwoButton);
    await widgetTester.pump();
    final counterWidgetAfterIncreaseTwo = find.byKey(MyHomePage.counterKey).evaluate().single.widget as Text;
    expect(counterWidgetAfterIncreaseTwo.data, '2');

    final decreaseTwoButton = find.byKey(MyHomePage.decreaseTwoKey);
    await widgetTester.tap(decreaseTwoButton);
    await widgetTester.pump();
    final counterWidgetAfterDecreaseTwo = find.byKey(MyHomePage.counterKey).evaluate().single.widget as Text;
    expect(counterWidgetAfterDecreaseTwo.data, '0');

    await widgetTester.tap(incrementButton);
    await widgetTester.pump();
    final counterWidgetAfterIncrementAgain = find.byKey(MyHomePage.counterKey).evaluate().single.widget as Text;
    expect(counterWidgetAfterIncrementAgain.data, '1');

    final multiplyByTwoButton = find.byKey(MyHomePage.multiplyByTwoKey);
    await widgetTester.tap(multiplyByTwoButton);
    await widgetTester.pump();
    final counterWidgetAfterMultiplyByTwo = find.byKey(MyHomePage.counterKey).evaluate().single.widget as Text;
    expect(counterWidgetAfterMultiplyByTwo.data, '2');

    final divideByTwoButton = find.byKey(MyHomePage.divideByTwoKey);
    await widgetTester.tap(divideByTwoButton);
    await widgetTester.pump();
    final counterWidgetAfterDivideByTwo = find.byKey(MyHomePage.counterKey).evaluate().single.widget as Text;
    expect(counterWidgetAfterDivideByTwo.data, '1');
  });
}
