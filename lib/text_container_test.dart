import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: TextContainerTest(),
    ));

class TextContainerTest extends StatefulWidget {
  @override
  _TextContainerTestState createState() => _TextContainerTestState();
}

class _TextContainerTestState extends State<TextContainerTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('测试Text和Container'),
      ),
      // body: testText(),
      body: testContainer(),
    );
  }

  Widget testText() {
    return Container(
      child: Text(
        "测试文字",
        style: TextStyle(
          decoration: TextDecoration.lineThrough,
          decorationColor: Colors.red,
          decorationStyle: TextDecorationStyle.wavy,
          fontStyle: FontStyle.italic,
          // wordSpacing: -100,
        ),
      ),
    );
  }

  Widget testContainer() {
    return Container(
      margin: EdgeInsets.all(50),
      padding: EdgeInsets.all(10),
      // alignment: Alignment.topRight,
      // color: Colors.green,
      height: 100,
      width: 100,
      child: Text("Container"),
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(
          color: Colors.red,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
