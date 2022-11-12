import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_3/data/local_data/question_local_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Icon> icons = [];

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
              koldonuuchunJoobu(true);
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
              koldonuuchunJoobu(false);
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
            children: icons,
          )
        ],
      ),
    );
  }

  void koldonuuchunJoobu(bool userdinJoobu) {
    if (userdinJoobu == questionLocalData.jooptuAlipkel()) {
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
    questionLocalData.suroonuOtkoz();
    questionLocalData.suroonuAlipkel();

    setState(() {});
  }
}
