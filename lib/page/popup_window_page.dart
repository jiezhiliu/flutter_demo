import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class PopupWindowPage extends StatefulWidget {
  @override
  _PopupWindowPageState createState() => _PopupWindowPageState();
}

class _PopupWindowPageState extends State<PopupWindowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('弹框提示框'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text("AlertDialog"),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {
                  _showAlertDialog();
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text("SimpleDialog"),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {
                  _showSimpleDialog();
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text("ModalBottomDialog"),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {
                  _showModalBottomDialog();
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text("ShowToast"),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {
                  Fluttertoast.showToast(
                    msg: "提示!!!!!",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    timeInSecForIosWeb: 3,
                    backgroundColor: Colors.black,
                    textColor: Colors.white,
                    fontSize: 16.0,
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// AlertDialog
  void _showAlertDialog() async {
    var result = await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("退出登录"),
            content: Text("确定要退出登录吗?"),
            actions: [
              RaisedButton(
                child: Text("取消"),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.of(context).pop("取消操作");
                },
              ),
              SizedBox(width: 70),
              RaisedButton(
                child: Text("确定"),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.of(context).pop("确定操作");
                },
              ),
            ],
          );
        });
    if (result != null) {
      print("操作结果 === $result");
    }
  }

  /// SimpleDialog
  void _showSimpleDialog() async {
    var result = await showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          title: Text("选择操作类型"),
          children: [
            Divider(color: Colors.blue),
            ListTile(
              leading: Icon(Icons.one_k),
              title: Text("类型 A"),
              onTap: () {
                Navigator.of(context).pop("类型 A");
              },
            ),
            Divider(color: Colors.blue),
            ListTile(
              leading: Icon(Icons.two_k),
              title: Text("类型 B"),
              onTap: () {
                Navigator.of(context).pop("类型 B");
              },
            ),
            Divider(color: Colors.blue),
            ListTile(
              leading: Icon(Icons.three_k),
              title: Text("类型 C"),
              onTap: () {
                Navigator.of(context).pop("类型 C");
              },
            ),
            Divider(color: Colors.blue),
            ListTile(
              leading: Icon(Icons.four_k),
              title: Text("类型 D"),
              onTap: () {
                Navigator.of(context).pop("类型 D");
              },
            ),
          ],
        );
      },
    );
    if (result != null) {
      print("选择的类型 ==== $result");
    }
  }

  /// ModalBottomDialog
  void _showModalBottomDialog() async {
    var result = await showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          padding: EdgeInsets.only(top: 20),
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RaisedButton(
                    child: Text("分享到QQ"),
                    color: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.of(context).pop("分享到QQ");
                    },
                  ),
                  RaisedButton(
                    child: Text("分享到QQ空间"),
                    color: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.of(context).pop("分享到QQ空间");
                    },
                  ),
                  RaisedButton(
                    child: Text("分享到微信"),
                    color: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.of(context).pop("分享到微信");
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RaisedButton(
                    child: Text("分享到微信朋友圈"),
                    color: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.of(context).pop("分享到微信朋友圈");
                    },
                  ),
                  RaisedButton(
                    child: Text("分享到微信收藏"),
                    color: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.of(context).pop("分享到微信收藏");
                    },
                  ),
                  RaisedButton(
                    child: Text("分享到微博"),
                    color: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.of(context).pop("分享到微博");
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RaisedButton(
                    child: Text("分享到抖音"),
                    color: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.of(context).pop("分享到抖音");
                    },
                  ),
                  RaisedButton(
                    child: Text("分享到快手"),
                    color: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.of(context).pop("分享到快手");
                    },
                  ),
                  RaisedButton(
                    child: Text("分享到钉钉"),
                    color: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.of(context).pop("分享到钉钉");
                    },
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
    if (result != null) {
      print("分享到 ==== $result");
    }
  }
}
