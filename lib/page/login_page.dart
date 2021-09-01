import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _phoneNumController = TextEditingController();
  bool isChose = false;
  bool isTitleChose = false;
  int groupValue = 1;
  int groupValueTitle = 2;
  bool isSwitch = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this._phoneNumController.text = "这是默认值1234567890";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('登录'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: this._phoneNumController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                // hintText: "请输入11位手机号",
                labelText: "手机号",
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                this._phoneNumController.text = value;
              },
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Checkbox(
                  value: this.isChose,
                  onChanged: (chose) {
                    print("选择了男孩 ===== $chose");
                    setState(() {
                      this.isChose = chose as bool;
                    });
                  },
                  activeColor: Colors.blue,
                  checkColor: Colors.white,
                ),
                Text(this.isChose ? "选中" : "未选中"),
              ],
            ),
            SizedBox(height: 20),
            CheckboxListTile(
              value: this.isTitleChose,
              title: Text("这是title一级标题"),
              subtitle: Text("这是subtitle二级标题"),
              activeColor: Colors.blue,
              secondary: Image.asset("assets/image/picture.jpeg"),
              selected: this.isTitleChose,
              checkColor: Colors.white,
              onChanged: (isChose) {
                print("选择复选框==== $isChose");
                setState(() {
                  this.isTitleChose = isChose as bool;
                });
              },
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text("男"),
                Radio(
                  value: 1,
                  groupValue: this.groupValue,
                  activeColor: Colors.blue,
                  onChanged: (value) {
                    print("男孩选中 ====== $value");
                    setState(() {
                      this.groupValue = value as int;
                    });
                  },
                ),
                SizedBox(width: 20),
                Text("女"),
                Radio(
                  value: 0,
                  groupValue: this.groupValue,
                  activeColor: Colors.blue,
                  onChanged: (value) {
                    print("女孩选中 ====== $value");
                    setState(() {
                      this.groupValue = value as int;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 20),
            RadioListTile(
              value: 0,
              groupValue: this.groupValueTitle,
              title: Text("title 0 一级标题"),
              subtitle: Text("subtitle 0 二级标题"),
              selected: this.groupValueTitle == 0,
              activeColor: Colors.blue,
              secondary: Image.asset("assets/image/picture.jpeg"),
              onChanged: (value) {
                setState(() {
                  this.groupValueTitle = value as int;
                });
              },
            ),
            SizedBox(height: 20),
            RadioListTile(
              value: 1,
              groupValue: this.groupValueTitle,
              title: Text("title 1 一级标题"),
              subtitle: Text("subtitle 1 二级标题"),
              selected: this.groupValueTitle == 1,
              activeColor: Colors.blue,
              secondary: Image.asset("assets/image/picture.jpeg"),
              onChanged: (value) {
                setState(() {
                  this.groupValueTitle = value as int;
                });
              },
            ),
            SizedBox(height: 20),
            RadioListTile(
              value: 2,
              groupValue: this.groupValueTitle,
              title: Text("title 2 一级标题"),
              subtitle: Text("subtitle 2 二级标题"),
              selected: this.groupValueTitle == 2,
              activeColor: Colors.blue,
              secondary: Image.asset("assets/image/picture.jpeg"),
              onChanged: (value) {
                setState(() {
                  this.groupValueTitle = value as int;
                });
              },
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Switch(
                  value: this.isSwitch,
                  activeColor: Colors.blue,
                  onChanged: (switchValue) {
                    print("开关的状态 ==== $switchValue");
                    setState(() {
                      this.isSwitch = switchValue;
                    });
                  },
                ),
                SizedBox(width: 20),
                Text(isSwitch ? "打开" : "关闭"),
              ],
            ),
            SizedBox(height: 40),
            Container(
              height: 50,

              /// 第一种方式实现按钮宽度和屏幕一样宽
              width: double.infinity,
              child: RaisedButton(
                child: Text("获取验证码"),
                color: Colors.blue,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                onPressed: () {
                  print("输入的手机号码：${this._phoneNumController.text}");
                  Navigator.pushNamed(context, "/smspage");
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
