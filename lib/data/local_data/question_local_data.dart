import 'package:flutter_application_3/model/questions_model.dart';

class QuestionLocalData {
  int index = 0;
  List<QuestionsModel> questionAns = [
    QuestionsModel(questions: 'Kyrgyzstanda 5 oblast bar', answers: false),
    QuestionsModel(questions: 'Osh Bishkeke karaiby?', answers: false),
    QuestionsModel(questions: 'Abdulkadir 16 jashtaby?', answers: true),
    QuestionsModel(questions: 'Oshto arka barby?', answers: true),
  ];
  // String? suroonuAlipkel() {
  //   if (index < questionAns.length) {
  //     return questionAns[index].questions;
  //   }

  //   return "Suroolor tugondu";
  // }

  // bool? jooptuAlipkel() {
  //   return questionAns[index].answers;
  // }

  // void suroonuOtkoz() {
  //   index++;
  // }
}

QuestionLocalData questionLocalData = QuestionLocalData();
