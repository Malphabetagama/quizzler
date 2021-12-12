import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  final List<Question> _questionBank = [
    Question(
      'Flutter is developed by FaceBook',
      false,
    ),
    Question(
      'Bill Gates is the founder of Amazon.',
      false,
    ),
    Question(
      'The FIFA World Cup 2022 will take place in Qatar.',
      true,
    ),
    Question(
      'H&M stands for Hennes & Mauritz',
      true,
    ),
    Question(
      'Tea contains more caffeine than coffee and soda.',
      false,
    ),
    Question(
      'Tesla was founded in 2003.Its first electric car was called Model S',
      true,
    ),
    Question(
      'India won the ICC Champions Trophy in 2014?',
      false,
    ),
    Question(
      ' Shanghai tower is the largest building in the world',
      false,
    ),
    Question(
      'Maruti Suzuki sells expensive cars',
      false,
    ),
    Question(
      'The first alpha version of Flutter was released in 2021',
      false,
    ),
  ];
  bool nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
      return false;
    } else {
      _questionNumber = 0;
      return true;
    }
  }

  String? getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool? getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }
}