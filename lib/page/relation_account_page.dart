import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_test_demo/page/login_page.dart';

class RelationAccountPage extends StatefulWidget {
  final arguments;
  RelationAccountPage({this.arguments});
  @override
  _RelationAccountPageState createState() =>
      _RelationAccountPageState(arguments: this.arguments);
}

class _RelationAccountPageState extends State<RelationAccountPage> {
  final arguments;
  String userName = "";
  String relationAccount = "";
  String pwd = "";
  int sexGroupValue = 1;
  List hobby = [
    {"title": "听音乐", "checked": true},
    {"title": "写代码", "checked": false},
    {"title": "玩游戏", "checked": true},
    {"title": "看电影", "checked": true},
  ];
  _RelationAccountPageState({this.arguments});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('账号关联'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "方法名：${this.arguments["funcName"].toString()}",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "返回逻辑：${this.arguments["result"]}",
                  maxLines: 4,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.blue,
                  ),
                )
              ],
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: "用户名",
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                this.userName = value;
              },
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: "关联账号",
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                this.relationAccount = value;
              },
            ),
            SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "密码",
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                this.pwd = value;
              },
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text("请选择性别"),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 40),
                Text("男："),
                SizedBox(width: 20),
                Radio(
                  value: 1,
                  groupValue: this.sexGroupValue,
                  activeColor: Colors.blue,
                  onChanged: (value) {
                    setState(() {
                      this.sexGroupValue = value as int;
                    });
                  },
                ),
                SizedBox(width: 20),
                Text("女："),
                SizedBox(width: 20),
                Radio(
                  value: 0,
                  groupValue: this.sexGroupValue,
                  activeColor: Colors.blue,
                  onChanged: (value) {
                    setState(() {
                      this.sexGroupValue = value as int;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text("请选择爱好"),
              ],
            ),
            // SizedBox(height: 20),
            Column(
              children: getHobby(),
            ),
            SizedBox(height: 40),
            Container(
              height: 50,
              width: double.infinity,
              child: RaisedButton(
                child: Text("绑定完成"),
                textColor: Colors.white,
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                onPressed: () {
                  List tempList = [];
                  this.hobby.forEach((element) {
                    if (element["checked"]) {
                      tempList.add(element);
                    }
                  });
                  print(
                      "用户名：$userName \n 关联账号：$relationAccount \n  密码：$pwd \n 性别 ${this.sexGroupValue == 1 ? "男" : "女"} \n 爱好：${tempList} \n");
                  if (this.arguments["immediatelyToLogin"]) {
                    Navigator.of(context).pop();
                  } else {
                    Navigator.pushAndRemoveUntil(context,
                        MaterialPageRoute(builder: (context) {
                      return LoginPage();
                    }), (route) => route == null);
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  List<Widget> getHobby() {
    List<Widget> tempHobby = [];
    this.hobby.forEach((element) {
      tempHobby.add(Row(
        children: [
          Text(element["title"].toString() + "："),
          SizedBox(width: 10),
          Checkbox(
            value: element["checked"],
            activeColor: Colors.blue,
            checkColor: Colors.white,
            onChanged: (value) {
              setState(() {
                element["checked"] = value;
              });
            },
          ),
        ],
      ));
    });
    return tempHobby;
  }
}
