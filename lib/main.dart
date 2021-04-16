

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'Card.dart';
void main (List <String> args ){
  {
    runApp(MyApp());
  }
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:myhome()
    );

  }
}
class myhome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.blue[800],
    body: Center(
     child: Column (
       
         children: [
           card(
             name: 'sara adel ',
             mail: 'saraadel339@gmail.com',
             phone: '1234567899',
             position: 'boss',
           ),
          card(
             name: 'adel mohamed',
             mail: 'adel@gmail.com',
             phone: '57896413368',
            position: 'not boss',
           ),
           card(
             name: 'haidy Muhammed',
             mail: 'haidyy@gmail.com',
             phone: '98745663125',
             position: 'maybe boss',
           ),


  ],
) ,
    ),


    );
  }
}
