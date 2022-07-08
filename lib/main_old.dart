import 'package:flutter/material.dart';
import './questions.dart';
import './answers.dart';

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  void _updateQuestionIndex() {
    setState(() => _questionIndex++);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
      appBar: AppBar(title: const Text("App Demo Title!")),
      body: _questionIndex < 3 ? SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Questions(_questionIndex),
            Answers(0, _updateQuestionIndex),
            Answers(1, _updateQuestionIndex)]),
      )
          : const Center(child: Text("Congratulations! You're done"))

    ));
  }
}

void main() => runApp(MyApp());
