import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  static const _answers = ["True", "False"];

  final int _answersIndex;
  final Function _updateQuestionIndex;

  Answers(this._answersIndex, this._updateQuestionIndex);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => _updateQuestionIndex(),
      style:
          ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue)),
      child: Text(_answers[_answersIndex]),
    );
  }
}
