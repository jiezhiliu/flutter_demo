import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  final arguments;
  SettingPage({this.arguments});
  @override
  _SettingPageState createState() =>
      _SettingPageState(arguments: this.arguments);
}

class _SettingPageState extends State<SettingPage> {
  final arguments;
  _SettingPageState({this.arguments});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("设置"),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("设置一些布局和格式"),
            ],
          ),
        ),
      ),
    );
  }
}
