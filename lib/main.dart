import 'package:flutter/material.dart';

import 'number_manipulator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  static const titleKey = Key('titleKey');
  static const counterKey = Key('counterKey');
  static const incrementKey = Key('incrementKey');
  static const decrementKey = Key('decrementKey');
  static const increaseTwoKey = Key('increaseTwoKey');
  static const decreaseTwoKey = Key('decreaseTwoKey');
  static const multiplyByTwoKey = Key('multiplyByTwoKey');
  static const divideByTwoKey = Key('divideByTwoKey');

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  final numberManipulator = NumberManipulator();

  void _increment() {
    setState(() {
      _counter = numberManipulator.increment(_counter);
    });
  }

  void _decrement() {
    setState(() {
      _counter = numberManipulator.decrement(_counter);
    });
  }

  void _increaseTwo() {
    setState(() {
      _counter = numberManipulator.increaseTwo(_counter);
    });
  }

  void _decreaseTwo() {
    setState(() {
      _counter = numberManipulator.decreaseTwo(_counter);
    });
  }

  void _multiplyByTwo() {
    setState(() {
      _counter = numberManipulator.multiplyByTwo(_counter);
    });
  }

  void _divideByTwo() {
    setState(() {
      _counter = numberManipulator.divideByTwo(_counter);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          widget.title,
          key: MyHomePage.titleKey,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              key: MyHomePage.counterKey,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Wrap(
              runSpacing: 10,
              spacing: 10,
              children: [
                ElevatedButton(
                  onPressed: _increment,
                  key: MyHomePage.incrementKey,
                  child: const Text('Increment'),
                ),
                ElevatedButton(
                  onPressed: _decrement,
                  key: MyHomePage.decrementKey,
                  child: const Text('Decrement'),
                ),
                ElevatedButton(
                  onPressed: _increaseTwo,
                  key: MyHomePage.increaseTwoKey,
                  child: const Text('Increment By Two'),
                ),
                ElevatedButton(
                  onPressed: _decreaseTwo,
                  key: MyHomePage.decreaseTwoKey,
                  child: const Text('Decrement By Two'),
                ),
                ElevatedButton(
                  onPressed: _multiplyByTwo,
                  key: MyHomePage.multiplyByTwoKey,
                  child: const Text('Multiply By Two'),
                ),
                ElevatedButton(
                  onPressed: _divideByTwo,
                  key: MyHomePage.divideByTwoKey,
                  child: const Text('Divide By Two'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
