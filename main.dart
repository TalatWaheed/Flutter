import 'package:flutter/material.dart';
//import 'dart:io';

void main() {
  runApp(Calculator());
}

class Calculator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CalculatorState();
  }
}

class CalculatorState extends State<Calculator> {
  int a = 2, b = 3;
  void addMethod() {
    var r = a + b;
    print(r);
  }

  void divideMethod() {
    var d = a / b;
    print(d);
  }

  void subtractMethod() {
    var s = b - a;
    print(s);
  }

  void multiplyMethod() {
    var m = a * b;
    print(m);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var questions = ['Add', 'Divide', 'Subtract', 'Multiply'];
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('Calculator')),
            body: Center(
              child: Column(
                children: [
                  Text(questions[0]),
                  Text('Addition of two numbers'),
                  ElevatedButton(onPressed: addMethod, child: Text('Add')),
                  Text('Divide the numbers'),
                  ElevatedButton(
                      onPressed: divideMethod, child: Text('Divide')),
                  Text('Subtract two numbers'),
                  ElevatedButton(
                      onPressed: subtractMethod, child: Text('Subtract')),
                  Text('Multuplication of two numbers'),
                  ElevatedButton(
                    onPressed: multiplyMethod,
                    child: Text('Multiply'),
                  ),
                ],
              ),
            )));
  }
}
