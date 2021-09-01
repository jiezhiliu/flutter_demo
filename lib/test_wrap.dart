import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: TestWrap(),
    ));

class TestWrap extends StatefulWidget {
  @override
  _TestWrapState createState() => _TestWrapState();
}

class _TestWrapState extends State<TestWrap> {
  List list = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for (int i = 1; i <= 30; i++) {
      list.add("第${i}个");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('测试流布局组件'),
      ),
      body: Container(
        width: 600,
        height: 600,
        decoration: BoxDecoration(
          color: Colors.green,
        ),
        child: Wrap(
          spacing: 10,
          runSpacing: 10,
          // alignment: WrapAlignment.center,
          // direction: Axis.vertical,
          crossAxisAlignment: WrapCrossAlignment.start,
          children: [
            MyButton("第1个"),
            MyButton("第2个"),
            MyButton("第3个"),
            MyButton("第4个"),
            MyButton("第5个"),
            MyButton("第6个"),
            MyButton("第7个"),
            MyButton("第8个"),
            MyButton("第9个"),
            MyButton("第10个"),
            MyButton("第11个"),
            MyButton("第12个"),
            MyButton("第13个"),
            MyButton("第14个"),
            MyButton("第15个"),
            MyButton("第16个"),
            MyButton("第17个"),
            MyButton("第18个"),
            MyButton("第19个"),
            MyButton("第20个"),
            MyButton("第21个"),
            MyButton("第22个"),
            MyButton("第23个"),
            MyButton("第24个"),
            MyButton("第25个"),
            MyButton("第26个"),
            MyButton("第27个"),
            MyButton("第28个"),
            MyButton("第29个"),
            MyButton("第30个"),
            MyButton("第31个"),
          ],
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  late String text;

  MyButton(this.text);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {},
      child: Text(text),
      textColor: Theme.of(context).accentColor,
    );
  }
}
