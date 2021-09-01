import 'package:flutter/material.dart';

class ContactsPage extends StatefulWidget {
  @override
  _ContactsPageState createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  List data = [
    {
      "name": "赵大",
      "describe": "这个人很懒,什么也没有留下",
      "headUrl":
          "http://pic.baike.soso.com/p/20130828/20130828161137-1346445960.jpg"
    },
    {
      "name": "薛二",
      "describe": "这个人很懒,什么也没有留下",
      "headUrl":
          "http://pic.baike.soso.com/p/20130828/20130828161137-1346445960.jpg"
    },
    {
      "name": "张三",
      "describe": "这个人很懒,什么也没有留下",
      "headUrl":
          "http://pic.baike.soso.com/p/20130828/20130828161137-1346445960.jpg"
    },
    {
      "name": "李四",
      "describe": "这是一些描述信息",
      "headUrl": "https://pic.baike.soso.com/p/20130828/20130828161137.jpg"
    },
    {
      "name": "王五",
      "describe": "这个人很懒,什么也没有留下",
      "headUrl": "https://pic.baike.soso.com/p/20130828/20130828161137.jpg"
    },
    {
      "name": "李六",
      "describe": "这个人很懒,什么也没有留下",
      "headUrl":
          "http://pic.baike.soso.com/p/20130828/20130828161137-1346445960.jpg"
    },
    {
      "name": "朱七",
      "describe": "这个人很懒,什么也没有留下",
      "headUrl": "https://pic.baike.soso.com/p/20130828/20130828161137.jpg"
    },
    {
      "name": "卓八",
      "describe": "这是一些描述信息",
      "headUrl":
          "http://pic.baike.soso.com/p/20130828/20130828161137-1346445960.jpg"
    },
    {
      "name": "刘九",
      "describe": "这个人很懒,什么也没有留下",
      "headUrl": "https://pic.baike.soso.com/p/20130828/20130828161137.jpg"
    },
    {
      "name": "贾十",
      "describe": "这个人很懒,什么也没有留下",
      "headUrl":
          "http://pic.baike.soso.com/p/20130828/20130828161137-1346445960.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[],
          ),
        ),
      ),
    );
  }
}
