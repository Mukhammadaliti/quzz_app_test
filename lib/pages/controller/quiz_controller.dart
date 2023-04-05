import 'package:flutter/material.dart';
import 'package:flutter_application_3/data/local_data/question_local_data.dart';
import 'package:flutter_application_3/pages/home_page.dart';
import 'package:get/get.dart';

class QuizController extends GetxController {
  RxList<Icon> icons = <Icon>[].obs;
  Rx<int> count = 0.obs;
  Rx<int> index = 0.obs;
  void koldonuuchunJoobu(bool userdinJoobu) {
    if (userdinJoobu == jooptuAlipkel()) {
      icons.add(
        const Icon(
          Icons.check,
          color: Colors.green,
          size: 50,
        ),
      );
    } else {
      icons.add(
        const Icon(
          Icons.close,
          color: Colors.red,
          size: 50,
        ),
      );
    }

    suroonuOtkoz();
    if (suroonuAlipkel() == "") {
      isFinished.value = true;
    }
  }

  String suroonuAlipkel() {
    if (index < questionLocalData.questionAns.length) {
      return questionLocalData.questionAns[index.value].questions!;
    }
    restart();
    icons.clear();
    return "Suroo Butubuu";
  }

  bool? jooptuAlipkel() {
    if (index.value < questionLocalData.questionAns.length) {
      return questionLocalData.questionAns[index.value].answers!;
    } else {
      return false;
    }
  }

  void suroonuOtkoz() {
    index.value++;
  }

  void restart() {
    index.value = 0;
  }

  RxBool isFinished = false.obs;

  Rx<dynamic> containerBer() {
    return Container(
      color: Colors.yellow,
      child: Text(
        'Suroo Buttu',
        style: TextStyle(fontSize: 50),
      ),
    ).obs;
  }

  // showAlert(BuildContext context) {
  //   // set up the button
  //   Widget okButton = TextButton(
  //     child: Text("OK"),
  //     onPressed: () {
  //       restart();
  //     },
  //   );

  //   // set up the AlertDialog
  //   AlertDialog alert = AlertDialog(
  //     title: Text("Buttu!"),
  //     actions: [
  //       okButton,
  //     ],
  //   );

  //   // show the dialog
  //   showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return alert;
  //     },
  //   );
  // }
}
