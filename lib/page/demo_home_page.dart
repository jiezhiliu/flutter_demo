import 'package:flutter/material.dart';

class DemoHomePage extends StatefulWidget {
  @override
  _DemoHomePageState createState() => _DemoHomePageState();
}

class _DemoHomePageState extends State<DemoHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('学习Flutter'),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Wrap(
          spacing: 20,
          runSpacing: 20,
          runAlignment: WrapAlignment.spaceBetween,
          children: [
            RaisedButton(
              textColor: Theme.of(context).accentColor,
              child: Text("底部导航栏"),
              onPressed: () {
                Navigator.pushNamed(context, '/mytabs');
              },
            ),
            RaisedButton(
              textColor: Theme.of(context).accentColor,
              child: Text("侧边栏页"),
              onPressed: () {
                Navigator.pushNamed(context, '/drawerhandpage');
              },
            ),
            RaisedButton(
              textColor: Theme.of(context).accentColor,
              child: Text("时间"),
              onPressed: () {
                Navigator.pushNamed(context, '/timepage');
              },
            ),
            RaisedButton(
              textColor: Theme.of(context).accentColor,
              child: Text("轮播图"),
              onPressed: () {
                Navigator.pushNamed(context, '/cardswiperpage');
              },
            ),
            RaisedButton(
              textColor: Theme.of(context).accentColor,
              child: Text("弹框提示框"),
              onPressed: () {
                Navigator.pushNamed(context, '/popupwindowpage');
              },
            ),
            RaisedButton(
              textColor: Theme.of(context).accentColor,
              child: Text("自定义弹框提示框"),
              onPressed: () {
                Navigator.pushNamed(context, '/mypopupwindowpage',
                    arguments: "这是关于我们的介绍。。。。。。。。。。。. 这是关于我们的介绍。。。。。。。。。。。.");
              },
            ),
            RaisedButton(
              textColor: Theme.of(context).accentColor,
              child: Text("Http使用"),
              onPressed: () {
                Navigator.pushNamed(context, '/httppage');
              },
            ),
            RaisedButton(
              textColor: Theme.of(context).accentColor,
              child: Text("Dio使用"),
              onPressed: () {
                Navigator.pushNamed(context, '/diopage');
              },
            ),
            RaisedButton(
              textColor: Theme.of(context).accentColor,
              child: Text("数据刷新加载"),
              onPressed: () {
                Navigator.pushNamed(context, '/datarefreshpage');
              },
            ),
            RaisedButton(
              textColor: Theme.of(context).accentColor,
              child: Text("对widget常用操作"),
              onPressed: () {
                Navigator.pushNamed(context, '/controlwidgetpage');
              },
            ),
          ],
        ),
      ),
    );
  }
}
