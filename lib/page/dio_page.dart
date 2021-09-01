import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: DioPage(),
    ));

class DioPage extends StatefulWidget {
  @override
  _DioPageState createState() => _DioPageState();
}

class _DioPageState extends State<DioPage> {
  List _data = [];

  /// get 地址
  String _getUrl = "https://jd.itying.com/api/pcate";

  /// post地址
  String _postUrl = "https://jd.itying.com/api/httpPost";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dio使用'),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text("Dio Get"),
                textColor: Colors.white,
                color: Colors.blue,
                onPressed: () {
                  _getData();
                },
              ),
              SizedBox(width: 20),
              RaisedButton(
                child: Text("Dio Post"),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {
                  _postData();
                },
              )
            ],
          ),
          Column(
            children: [
              _data.length > 0
                  ? Container(
                      width: double.infinity,
                      height: 500,
                      child: ListView.builder(
                        itemCount: _data.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text("${_data[index]["title"]}"),
                            subtitle: Text("${_data[index]["_id"]}"),
                          );
                        },
                      ),
                    )
                  : Text("暂时没有数据"),
            ],
          )
        ],
      ),
    );
  }

  void _getData() async {
    var result = await Dio().get(_getUrl);
    if (result != null) {
      print("===result.data===${result.data}======");
      print("===result.data is Map ===${result.data is Map}======");
      print("==result.statusCode====${result.statusCode}======");
      print("===result.statusMessage===${result.statusMessage}======");
      print("===result.headers===${result.headers}======");
      if (result.statusCode.toString() == "200") {
        print("请求成功");
        setState(() {
          _data = result.data["result"];
        });
      }
    }
  }

  void _postData() async {
    var result = await Dio().post(_postUrl,
        data: {"name": "lisi", "age": "24", "email": "987654321@qq.com"},
        onSendProgress: (int sent, int total) {
      print("$sent--------$total");
    }, onReceiveProgress: (int rece, int total) {
      print("--$rece------$total");
    });
    if (result != null) {
      print("--result.data----${result.data}----");
      print("--result.statusCode----${result.statusCode}-------");
      print("--result.data is Map----${result.data is Map}-------");
      if (result.statusCode.toString() == "200") {
        print("---result.data[msg]----${result.data["msg"]}-----");
        print("---result.data[body]----${result.data["body"]}-----");
      }
    }
  }
}
