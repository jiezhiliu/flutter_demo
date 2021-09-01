import 'package:flutter/material.dart';

class SmsPage extends StatefulWidget {
  @override
  _SmsPageState createState() => _SmsPageState();
}

class _SmsPageState extends State<SmsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('填写验证码'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "验证码",
              ),
            ),
            SizedBox(height: 40),
            TextField(
              /// 输入的内容会显示.
              obscureText: true,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "密码",
              ),
            ),
            SizedBox(height: 40),
            Row(
              children: [
                Container(
                  /// 第二种方式实现按钮宽度和屏幕宽度一样
                  child: Expanded(
                    child: RaisedButton(
                      child: Text("绑定 pushReplacementNamed"),
                      color: Colors.blue,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      onPressed: () {
                        /// 这种方式打开的页面会替换当前页面，所以下个页面返回会直接返回到上个页面
                        Navigator.pushReplacementNamed(context, "/relationpage",
                            arguments: {
                              "immediatelyToLogin": true,
                              "funcName": "pushReplacementNamed",
                              "result": "需要调用 pop 可以直接返回登录"
                            });
                      },
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Container(
                  /// 第二种方式实现按钮宽度和屏幕宽度一样
                  child: Expanded(
                    child: RaisedButton(
                      child: Text("绑定 pushNamed"),
                      color: Colors.blue,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      onPressed: () {
                        /// 这种方式需要调用 Navigator.pushAndRemoveUntil(context, newRoute, (route) => false)
                        Navigator.pushNamed(context, "/relationpage",
                            arguments: {
                              "immediatelyToLogin": false,
                              "funcName": "pushNamed",
                              "result": "调用 pushAndRemoveUntil 返回登录 "
                            });
                      },
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
