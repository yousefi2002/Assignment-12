
import 'question_bank.dart';

class QuestionList{
   int _questionNumber = 0;
  List <QuestionBank> _questions =[
    QuestionBank('earth is the third planet', true),
    QuestionBank('milk is red', false),
    QuestionBank('sky is blue', true),
    QuestionBank('in order to go to upstairs you should go down word', false),
    QuestionBank(' a soccer tem has 9 player', false),
  ];
  void nextQuestion(){
    if(_questionNumber < _questions.length -1){
      _questionNumber ++;
    }
  }
  String getQuestion (){
    return _questions[_questionNumber].questionText;
  }
  bool getAnswer(){
    return _questions[_questionNumber].correctAnswer;
  }
  bool isFinished() {
    if (_questionNumber >= _questions.length - 1) {
      return true;
    } else {
      return false;
    }
  }
  void reset() {
    _questionNumber = 0;
  }
}
