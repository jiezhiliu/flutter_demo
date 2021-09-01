import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final arguments;
  HomePage({this.arguments});
  @override
  _HomePageState createState() => _HomePageState(arguments: this.arguments);
}

class _HomePageState extends State<HomePage> {
  final arguments;
  List data = [
    {"name": "商品1", "productId": "12abc21de33ff55faaf-1"},
    {"name": "商品2", "productId": "12accdd2299333ffaaf-2"},
    {"name": "商品3", "productId": "12abc21de33ff55faaf-3"},
    {"name": "商品4", "productId": "12abc21de33ff55faaf-4"},
    {"name": "商品5", "productId": "12abc21de33ff55faaf-5"},
    {"name": "商品6", "productId": "12adddd11123255faaf-6"},
    {"name": "商品7", "productId": "12abc21de33ff55faaf-7"},
    {"name": "商品8", "productId": "12abc21de33ff55faaf-8"},
    {"name": "商品9", "productId": "12abc21de33ff55faaf-9"},
    {"name": "商品10", "productId": "12abc21de33ff55faaf-10"},
    {"name": "商品11", "productId": "12abc21de33ff55faaf-11"},
    {"name": "商品12", "productId": "12abc21de33ff55faaf-12"},
    {"name": "商品13", "productId": "12abc21de33ff55faaf-13"},
    {"name": "商品14", "productId": "12abc21de33ff55faaf-14"},
    {"name": "商品15", "productId": "12abc21de33ff55faaf-15"},
    {"name": "商品16", "productId": "12abc21de33ff55faaf-16"},
    {"name": "商品17", "productId": "12abc21de33ff55faaf-17"},
    {"name": "商品18", "productId": "12abc21de33ff55faaf-18"},
    {"name": "商品19", "productId": "12abc21de33ff55faaf-19"},
    {"name": "商品20", "productId": "12abc21de33ff55faaf-20"},
    {"name": "商品21", "productId": "12abc21de33ff55faaf-21"},
    {"name": "商品22", "productId": "12abc21de33ff55faaf-22"},
    {"name": "商品23", "productId": "12abc21de33ff55faaf-23"},
    {"name": "商品24", "productId": "12abc21de33ff55faaf-24"},
    {"name": "商品25", "productId": "12abc21de33ff55faaf-25"},
    {"name": "商品26", "productId": "12abc21de33ff55faaf-26"},
  ];
  _HomePageState({this.arguments});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            RaisedButton(
              textColor: Colors.white,
              color: Colors.blue,

              /// 水波纹颜色
              splashColor: Colors.red,

              /// 阴影大小
              elevation: 50,
              child: Text("跳转到商品界面"),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),

              // /// 这种模式一般配合Container来使用，可以设置按钮的大小
              // shape: CircleBorder(
              //   side: BorderSide(
              //     color: Colors.red,
              //   ),
              // ),
              onPressed: () {
                Navigator.pushNamed(context, '/productpage',
                    arguments: {"data": data});
              },
            ),
            SizedBox(height: 20),
            Container(
              height: 60,
              width: 60,
              child: FlatButton(
                color: Colors.blueAccent,
                textColor: Colors.white,
                shape: CircleBorder(
                    side: BorderSide(
                  color: Colors.green,
                )),
                onPressed: () {
                  Navigator.pushNamed(context, "/loginpage");
                },
                child: Text("登录"),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 40,
              width: 120,
              color: Colors.blue,
              child: OutlineButton(
                textColor: Colors.white,
                child: Text(
                  'AppBarTabs',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, "/tabsbarpage");
                },
              ),
            ),
            SizedBox(height: 20),
            IconButton(
              iconSize: 30,
              color: Colors.blue,
              onPressed: () {
                print("IconButton");
              },
              icon: Icon(Icons.access_alarm),
            ),
          ],
        ),
      ),
    );
  }
}
