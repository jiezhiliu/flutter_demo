import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HttpPage extends StatefulWidget {
  @override
  _HttpPageState createState() => _HttpPageState();
}

class _HttpPageState extends State<HttpPage> {
  ///地址: https://jd.itying.com/api/pcate
  String _getUrl = "https://jd.itying.com/api/pcate";
  String _postUrl = "https://jd.itying.com/api/httpPost";
  List data = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Http使用'),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text("Http Get"),
                textColor: Colors.white,
                color: Colors.blue,
                onPressed: () {
                  _getData();
                },
              ),
              SizedBox(width: 20),
              RaisedButton(
                child: Text("Http Post"),
                textColor: Colors.white,
                color: Colors.blue,
                onPressed: () {
                  _postData();
                },
              ),
            ],
          ),
          Container(
            height: 500,
            width: double.infinity,
            // color: Colors.blueGrey,
            child: data.length > 0
                ? ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text("${data[index]["title"]}"),
                        subtitle: Text("${data[index]["_id"]}"),
                      );
                    },
                  )
                : Text("尚没有数据"),
          ),
        ],
      ),
    );
  }

  /// 从服务器获取数据
  void _getData() async {
    var tempUrl = Uri.parse(_getUrl);
    var response = await http.get(tempUrl);
    if (response != null) {
      print("--response.statusCode--${response.statusCode}");
      print("--response.body--${response.body}");
      if (response.statusCode.toString() == "200") {
        /// 请求成功
        /// json.decoder("") 将json字符串转成Map类型
        /// json.encoder() 将Map类型的数据转成json
        setState(() {
          data = json.decode(response.body)["result"];
        });
        // print("====数据的长度----${data.length}");
      }
    }
  }

  /// 发送数据到服务器
  void _postData() async {
    var tempUrl = Uri.parse(_postUrl);
    var result = await http.post(tempUrl,
        body: {"name": "zhangsan", "age": "20", "email": "1234567890@qq.com"});
    if (result != null) {
      print("----result.statusCode-${result.statusCode}");
      print("----result.body------${result.body}");
      if (result.statusCode.toString() == "200") {
        /// post成功
        var postResult = json.decode(result.body);
        print("=====msg===${postResult["msg"]}");
        print("=====body===${postResult["body"]}");
      }
    }
  }
}
