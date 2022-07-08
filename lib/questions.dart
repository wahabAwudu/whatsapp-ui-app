import 'package:flutter/widgets.dart';

class Questions extends StatelessWidget {
  static const _questions = [
    "How are you?",
    "Do you love me?",
    "Do you want to spend the rest of your life with me?",
    "Do you think I'm the one you need in your life?",
    "Will you be the mother of my kids?"
  ];

  final int _questionIndex;

  Questions(this._questionIndex);

  @override
  Widget build(BuildContext context) {
    return Text(_questions[_questionIndex]);
  }
}
