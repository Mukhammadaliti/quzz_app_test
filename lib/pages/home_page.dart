import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_3/data/local_data/question_local_data.dart';
import 'package:flutter_application_3/pages/controller/quiz_controller.dart';

class HomePage extends StatelessWidget {
  QuizController _quizController = Get.put(QuizController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text("Тапшырма 7"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            questionLocalData.suroonuAlipkel().toString(),
            style: TextStyle(color: Colors.white, fontSize: 30),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              _quizController.koldonuuchunJoobu(true);
              log('Tuura basilip atat');
            },
            child: Container(
              width: 400,
              height: 50,
              color: Colors.green,
              child: Text(
                'Туура',
                style: TextStyle(color: Colors.white, fontSize: 40),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              _quizController.koldonuuchunJoobu(false);
            },
            child: Container(
              width: 400,
              height: 50,
              color: Colors.red,
              child: Text(
                "Ката",
                style: TextStyle(fontSize: 40, color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Row(
            children: _quizController.icons.value,
          )
        ],
      ),
    );
  }
}
