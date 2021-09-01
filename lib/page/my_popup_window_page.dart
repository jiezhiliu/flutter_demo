import 'dart:async';

import 'package:flutter/material.dart';

class MyPopupWindowPage extends Dialog {
  final content;
  MyPopupWindowPage({this.content});

  @override
  Widget build(BuildContext context) {
    _showTimer(context);
    return new Material(

        /// 设置透明类型
        // type: MaterialType.transparency,
        color: Color(0xFF7F7F7F),
        child: Center(
          child: Container(
            height: 300,
            width: 300,
            color: Colors.white,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text("关于我们"),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: InkWell(
                          child: Icon(Icons.cancel),
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      )
                    ],
                  ),
                ),
                Divider(height: 1),
                Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 200,
                      child: Text("$content"),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }

  /// 定时器
  void _showTimer(BuildContext context) {
    var t;
    t = Timer.periodic(new Duration(milliseconds: 3000), (timer) {
      print("------计时结束---------");
      Navigator.of(context).pop();
      t.cancel();
    });
  }
}
