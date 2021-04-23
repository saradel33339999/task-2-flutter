

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_app/questionScreen.dart';
import 'package:flutter/cupertino.dart';

void main ( ){

    runApp(MyApp());

}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:myhome(),
    );

  }
}
class myhome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Welcome to the Quiz , hope you will do well :) ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35.0,
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QuestionScreen(0),
                    ),
                  );
                },
                child: Container(
                  width: 255.0,
                  height: 70.0,
                  child: Center(
                    child: Text(
                      'Start Quiz',
                      style: TextStyle(fontSize: 40.0,
                        color: Colors.blue),

                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
