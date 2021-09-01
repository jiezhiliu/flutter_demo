import 'package:flutter/material.dart';
import 'package:flutter_test_demo/res/listData.dart';

void main() => runApp(MaterialApp(
      home: GirdViewTest(),
    ));

class GirdViewTest extends StatefulWidget {
  @override
  _GirdViewTestState createState() => _GirdViewTestState();
}

class _GirdViewTestState extends State<GirdViewTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('测试GridView'),
      ),
      // body: test01(),
      body: test02(),
    );
  }

  Widget test01() {
    return Container(
      margin: EdgeInsets.all(30),
      child: GridView.count(
        scrollDirection: Axis.vertical,
        crossAxisCount: 4,
        // mainAxisSpacing: 10,
        crossAxisSpacing: 60,
        children: [
          Text(
            "测试",
            style: TextStyle(color: Colors.red),
          ),
          Text(
            "测试",
            style: TextStyle(color: Colors.red),
          ),
          Text(
            "测试",
            style: TextStyle(color: Colors.red),
          ),
          Text(
            "测试",
            style: TextStyle(color: Colors.red),
          ),
          Text(
            "测试",
            style: TextStyle(color: Colors.red),
          ),
          Text(
            "测试",
            style: TextStyle(color: Colors.red),
          ),
          Text(
            "测试",
            style: TextStyle(color: Colors.red),
          ),
          Text(
            "测试",
            style: TextStyle(color: Colors.red),
          ),
          Text(
            "测试",
            style: TextStyle(color: Colors.red),
          ),
          Text(
            "测试",
            style: TextStyle(color: Colors.red),
          ),
          Text(
            "测试",
            style: TextStyle(color: Colors.red),
          ),
          Text(
            "测试",
            style: TextStyle(color: Colors.red),
          ),
        ],
      ),
    );
  }

  test02() {
    return Container(
        padding: EdgeInsets.all(10),
        child: GridView.builder(
          itemCount: listData.length,
          scrollDirection: Axis.vertical,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            crossAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            return Container(
              child: Column(
                children: [
                  Image.network(listData[index]["imageUrl"].toString()),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    listData[index]["title"],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.red,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                border: Border.all(
                  color: Colors.green,
                  width: 1,
                ),
              ),
            );
          },
        ));
  }
}
