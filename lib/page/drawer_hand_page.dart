import 'package:flutter/material.dart';

class DrawerHandPage extends StatefulWidget {
  @override
  _DrawerHandPageState createState() => _DrawerHandPageState();
}

class _DrawerHandPageState extends State<DrawerHandPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('侧边栏'),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              RaisedButton(
                textColor: Colors.white,
                color: Colors.blue,
                child: Text("返回"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ),
      ),
      drawer: leftDrawer(),
      endDrawer: rightDrawer(),
    );
  }

  Widget leftDrawer() {
    return Drawer(
      child: Column(
        children: [
          SizedBox(height: 100),
          Row(
            children: [
              Text("个人中心"),
            ],
          ),
          DrawerHeader(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.yellow,
              image: DecorationImage(
                image:
                    NetworkImage("https://www.itying.com/images/flutter/2.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("我的空间"),
                ),
                Divider(
                  height: 1,
                  color: Colors.grey,
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("系统设置"),
                  onTap: () {
                    /// 要先关闭侧边栏，然后再跳转
                    Navigator.of(context).pop();
                    Navigator.pushNamed(context, "/settingpage");
                  },
                ),
                Divider(
                  height: 1,
                  color: Colors.grey,
                ),
                ListTile(
                  leading: Icon(Icons.help),
                  title: Text("帮助"),
                ),
                Divider(
                  height: 1,
                  color: Colors.grey,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget rightDrawer() {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.blueGrey,
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage:
                  NetworkImage("https://www.itying.com/images/flutter/2.png"),
            ),
            otherAccountsPictures: [
              /// 最多只能有三个
              Image.asset("assets/image/Bg.png"),
              Image.asset("assets/image/Clothes.png"),
              Image.asset("assets/image/MakeUp.png"),
            ],
            accountName: Text("张三"),
            accountEmail: Text("123456789.@qq.com"),
            onDetailsPressed: () {
              print("详细信息");
            },
          )
        ],
      ),
    );
  }
}
