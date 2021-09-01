import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: SendPage(),
    ));

class SendPage extends StatefulWidget {
  @override
  _SendPageState createState() => _SendPageState();
}

class _SendPageState extends State<SendPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text("这是发送"),
              Text("这是发送"),
              Text("这是发送"),
            ],
          ),
        ),
      ),
    );
  }
}
