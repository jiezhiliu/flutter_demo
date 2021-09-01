import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class DataRefreshPage extends StatefulWidget {
  @override
  _DataRefreshPageState createState() => _DataRefreshPageState();
}

class _DataRefreshPageState extends State<DataRefreshPage>
    with SingleTickerProviderStateMixin {
  List _data = [];
  int _page = 1;
  bool isLoadingData = true;
  bool isLoadingEnd = true;
  ScrollController _scrollController = new ScrollController();
  // ignore: avoid_init_to_null
  var _animationController = null;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getData();

    _animationController = new AnimationController(
        vsync: this, duration: new Duration(milliseconds: 1000));
    _animationController.forward();
    _animationController.addListener(() {
      setState(() {});
    });

    /// 不好用
    // _scrollController.addListener(() {
    //   /// _scrollController.position.pixels 滚动的距离
    //   /// _scrollController.position.maxScrollExtent 总距离
    //   if (_scrollController.position.pixels >
    //       _scrollController.position.maxScrollExtent - 20) {
    //     _getData();
    //   }
    // });
  }

  void _getData() async {
    if (!isLoadingData) return;
    if (isLoadingEnd) {
      isLoadingEnd = false;
      var result = await Dio().get(
          "http://www.phonegap100.com/appapi.php?a=getPortalList&catid=20&page=$_page");
      if (result != null) {
        if (result.statusCode.toString() == "200") {
          List data = json.decode(result.data)["result"];
          if (data.length == 0) {
            /// 认为没有了数据
            setState(() {
              isLoadingEnd = true;
              isLoadingData = false;
            });
          } else {
            Future.delayed(new Duration(milliseconds: 1000)).then((value) {
              setState(() {
                isLoadingData = true;
                _data.addAll(data);
                _page++;
                isLoadingEnd = true;
              });
            });
          }
        }
      }
    }
  }

  Future<void> _onRefresh() async {
    await Future.delayed(new Duration(seconds: 3)).then((value) {
      print("顶部上拉刷新");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('数据刷新'),
      ),
      body: _data.length > 0
          ? RefreshIndicator(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  if (index == _data.length - 1) {
                    _getData();
                    return Column(
                      children: [
                        ListTile(
                          title: Text("${_data[index]["aid"]}"),
                          subtitle: Text(
                            "${_data[index]["title"]}}",
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Divider(
                          height: 1,
                          color: Colors.greenAccent,
                        ),
                        _loadingWidget(),
                      ],
                    );
                  } else {
                    return Column(
                      children: [
                        ListTile(
                          title: Text("${_data[index]["aid"]}"),
                          subtitle: Text(
                            "${_data[index]["title"]}}",
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Divider(
                          height: 1,
                          color: Colors.greenAccent,
                        ),
                      ],
                    );
                  }
                },
                itemCount: _data.length,
                controller: _scrollController,
              ),
              onRefresh: _onRefresh)
          : _loadingWidget(),
    );
  }

  Widget _loadingWidget() {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              isLoadingData ? "加载中..." : "-我是有底线的-",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(width: 4),
            isLoadingData
                ? Container(
                    height: 20,
                    width: 20,
                    child: CircularProgressIndicator(
                      backgroundColor: Colors.greenAccent,
                      valueColor:
                          ColorTween(begin: Colors.red, end: Colors.blue)
                              .animate(_animationController),
                      strokeWidth: 2,
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
