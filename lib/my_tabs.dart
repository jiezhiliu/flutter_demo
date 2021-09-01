import 'package:flutter/material.dart';
import 'package:flutter_test_demo/page/contacts_page.dart';
import 'package:flutter_test_demo/page/find_page.dart';
import 'package:flutter_test_demo/page/home_page.dart';
import 'package:flutter_test_demo/page/message_page.dart';
import 'package:flutter_test_demo/page/publish_page.dart';

class MyTabs extends StatefulWidget {
  @override
  _MyTabsState createState() => _MyTabsState();
}

class _MyTabsState extends State<MyTabs> {
  List _pageList = [
    HomePage(),
    FindPage(),
    PublishPage(),
    ContactsPage(),
    MessagePage()
  ];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('底部导航栏'),
      ),
      body: this._pageList[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            title: Text("首页"),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.remove_red_eye,
            ),
            title: Text("发现"),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add,
            ),
            title: Text("发布"),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.contact_page,
            ),
            title: Text("联系人"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            title: Text("消息"),
          )
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.lightGreen,
        onTap: (int index) {
          setState(() {
            this._currentIndex = index;
          });
        },
        iconSize: 30,
      ),

      /// 浮动按钮
      /// 模仿一个类似闲鱼中发布的按钮
      floatingActionButton: Container(
        height: 80,
        width: 80,
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(
              40,
            )),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, "/publishpage");
          },
          backgroundColor: Colors.yellow,
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
