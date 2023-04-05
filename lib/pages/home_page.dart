import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_3/data/local_data/question_local_data.dart';
import 'package:flutter_application_3/pages/controller/quiz_controller.dart';

class HomePage extends StatelessWidget {
  QuizController _quizController = Get.put(QuizController());

  @override
  Widget build(BuildContext context) {
    log("${_quizController.count.value} ====>");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text("Тапшырма 7"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // _quizController.containerBer(),
          // showAlert(context),
          _quizController.isFinished == true
              ? AlertDialog(
                  title: const Text("Suroolor buttu"),
                  actions: [
                    TextButton(
                        onPressed: () {
                          _quizController.isFinished.value = false;
                          _quizController.icons.value = [];
                          _quizController.restart();
                        },
                        child: const Text("Kaira bashta"))
                  ],
                )
              : Obx(() => Text(
                    _quizController.suroonuAlipkel().toString(),
                    style: TextStyle(color: Colors.white, fontSize: 30),
                    textAlign: TextAlign.center,
                  )),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              // showAlert(context);
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
              // showAlert(context);
              log("${_quizController.count}");
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
          Obx(() => Row(
                children: _quizController.icons.value,
              )),
        ],
      ),
    );
  }

  showAlert(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: Text("OK"),
      onPressed: () {},
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Buttu!"),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
