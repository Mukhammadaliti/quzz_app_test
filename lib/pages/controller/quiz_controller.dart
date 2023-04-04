import 'package:flutter/material.dart';
import 'package:flutter_application_3/data/local_data/question_local_data.dart';
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
          Icons.cancel,
          color: Colors.red,
          size: 50,
        ),
      );
    }

    suroonuOtkoz();
    suroonuAlipkel();
  }

  String? suroonuAlipkel() {
    if (index < questionLocalData.questionAns.length) {
      return questionLocalData.questionAns[index.value].questions;
    }

    return "Suroolor tugondu";
  }

  bool? jooptuAlipkel() {
    return questionLocalData.questionAns[index.value].answers;
  }

  void suroonuOtkoz() {
    index.value = index.value++;
  }
}
