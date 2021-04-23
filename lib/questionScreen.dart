import 'package:flutter/material.dart';
import 'package:flutter_app/Quiz/quiz.dart';


class QuestionScreen extends StatefulWidget {
  final int index;
  QuestionScreen(this.index);

  @override
  _State createState() => _State();
}

class _State extends State<QuestionScreen> {
  Quiz quiz = Quiz();
  bool is_correct = false;
  bool is_wrong = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              quiz.quiz[widget.index].question,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 35.0,
              ),
            ),
            Visibility(
              child: Icon(
                Icons.check,
                color: Colors.green,
                size: 55.0,
              ),
              visible: is_correct,
              replacement: Visibility(
                child: Icon(
                  Icons.clear,
                  color: Colors.red,
                  size: 55.0,
                ),
                visible: is_wrong,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: (){
                    if (quiz.quiz[widget.index].answer == true)
                      setState(() {
                        is_correct = true;
                        is_wrong = false;
                      });
                    else setState(() {
                      is_correct = false;
                      is_wrong = true;
                    });
                  },
                  child: Container(
                    width: 160.0,
                    height: 70.0,
                    child: Center(
                      child: Text(
                        'true',
                        style: TextStyle(fontSize: 35.0, color: Colors.white),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.greenAccent[200],
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                ),
                MaterialButton(
                  onPressed: (){
                    if (quiz.quiz[widget.index].answer == false)
                      setState(() {
                        is_correct = true;
                        is_wrong = false;
                      });
                    else setState(() {
                      is_correct = false;
                      is_wrong = true;
                    });
                  },
                  child: Container(
                    width: 150.0,
                    height: 70.0,
                    child: Center(
                      child: Text(
                        'false',
                        style: TextStyle(fontSize: 35.0, color: Colors.white),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.redAccent[200],
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                ),
              ],
            ),
            MaterialButton(
              onPressed: () =>
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => QuestionScreen(widget.index+1),
                  ),
                ),

              child: Container(
                width: 300.0,
                height: 70.0,
                child: Center(
                  child: Text(
                    'Next',
                    style: TextStyle(fontSize: 50.0, color: Colors.blue),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


