import 'package:flutter_incremental_app_using_tdd/number_manipulator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late NumberManipulator numberManipulator;

  setUp(() {
    numberManipulator = NumberManipulator();
  });

  tearDown(() {
    // Clean up the resources
  });

  int currentNumber = 1;

  test('Increment number', () {
    currentNumber = numberManipulator.increment(currentNumber);
    expect(currentNumber, 2);
  });

  test('Increase number by two', () {
    currentNumber = numberManipulator.increaseTwo(currentNumber);
    expect(currentNumber, 4);
  });

  test('Decrement number', () {
    currentNumber = numberManipulator.decrement(currentNumber);
    expect(currentNumber, 3);
  });

  test('Decrease number by two', () {
    currentNumber = numberManipulator.decreaseTwo(currentNumber);
    expect(currentNumber, 1);
  });

  test('Increment number again', () {
    currentNumber = numberManipulator.increment(currentNumber);
    expect(currentNumber, 2);
  });

  test('Multiply by two', () {
    currentNumber = numberManipulator.multiplyByTwo(currentNumber);
    expect(currentNumber, 4);
  });

  test('Divide by two', () {
    currentNumber = numberManipulator.divideByTwo(currentNumber);
    expect(currentNumber, 2);
  });

  test('Divide by two again', () {
    currentNumber = numberManipulator.divideByTwo(currentNumber);
    expect(currentNumber, 1);
  });

  test('Decrease by two again', () {
    currentNumber = numberManipulator.decreaseTwo(currentNumber);
    expect(currentNumber, -1);
  });
}
