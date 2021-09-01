import 'package:flutter/material.dart';

class TimePage extends StatefulWidget {
  @override
  _TimePageState createState() => _TimePageState();
}

class _TimePageState extends State<TimePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('日期时间'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  child: Text("原生日期时间"),
                  textColor: Colors.white,
                  color: Colors.blue,
                  onPressed: () {
                    Navigator.pushNamed(context, '/timepickpage');
                  },
                )
              ],
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  child: Text("第三方日期时间"),
                  textColor: Colors.white,
                  color: Colors.blue,
                  onPressed: () {
                    Navigator.pushNamed(context, '/timepickpubpage');
                  },
                )
              ],
            ),
          ],
        ));
  }
}
