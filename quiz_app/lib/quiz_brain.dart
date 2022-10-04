import 'question.dart';

class QuizBrain {
  int _qNumber = 0;

  final List<Question> _questionBank = [
    Question(q: 'Are you a Human?', a: false),
    Question(q: 'Are you a Robot?', a: true),
    Question(q: 'Are you a Animal?', a: false),
    Question(q: 'Are you a Ghost?', a: true),
    Question(q: 'You sure you alive?', a: false),
    Question(q: 'Your home\'s on Earth?', a: false),
  ];

  void nextQuestion() {
    if (_qNumber < _questionBank.length - 1) {
      _qNumber++;
    }
  }

  bool isFinished() {
    if (_qNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _qNumber = 0;
  }

  String getQuestionText() {
    return _questionBank[_qNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_qNumber].questionAnswer;
  }
}
