import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: PaddingRowTest(),
    ));

class PaddingRowTest extends StatefulWidget {
  @override
  _PaddingRowTestState createState() => _PaddingRowTestState();
}

class _PaddingRowTestState extends State<PaddingRowTest> {
  @override
  Widget build(BuildContext context) {
    // return testPadding();
    // return testRow();
    // return testColumn();
    // return testExpand();
    return testHomeWork();
  }

  Widget testPadding() {
    return Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 1.7,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.network(
                  'https://www.itying.com/images/flutter/1.png',
                  fit: BoxFit.cover),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.network(
                  'https://www.itying.com/images/flutter/2.png',
                  fit: BoxFit.cover),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.network(
                  'https://www.itying.com/images/flutter/3.png',
                  fit: BoxFit.cover),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.network(
                  'https://www.itying.com/images/flutter/4.png',
                  fit: BoxFit.cover),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.network(
                  'https://www.itying.com/images/flutter/5.png',
                  fit: BoxFit.cover),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.network(
                  'https://www.itying.com/images/flutter/6.png',
                  fit: BoxFit.cover),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.network(
                  'https://www.itying.com/images/flutter/1.png',
                  fit: BoxFit.cover),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.network(
                  'https://www.itying.com/images/flutter/2.png',
                  fit: BoxFit.cover),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.network(
                  'https://www.itying.com/images/flutter/3.png',
                  fit: BoxFit.cover),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.network(
                  'https://www.itying.com/images/flutter/4.png',
                  fit: BoxFit.cover),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.network(
                  'https://www.itying.com/images/flutter/5.png',
                  fit: BoxFit.cover),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.network(
                  'https://www.itying.com/images/flutter/6.png',
                  fit: BoxFit.cover),
            ),
          ],
        ));
  }

  Widget testRow() {
    return Container(
      // height: 400,
      // width: 400,
      color: Colors.green,
      padding: EdgeInsets.only(left: 30, top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "测试行",
            style: TextStyle(
              fontSize: 16,
              decorationStyle: TextDecorationStyle.dashed,
            ),
          ),
          Text(
            "测试行",
            style: TextStyle(
              fontSize: 16,
              decorationStyle: TextDecorationStyle.dashed,
            ),
          ),
          Text(
            "测试行",
            style: TextStyle(
              fontSize: 16,
              decorationStyle: TextDecorationStyle.dashed,
            ),
          ),
          Text(
            "测试行",
            style: TextStyle(
              fontSize: 16,
              decorationStyle: TextDecorationStyle.dashed,
            ),
          ),
        ],
      ),
    );
  }

  Widget testColumn() {
    return Container(
      // height: 400,
      // width: 400,
      color: Colors.green,
      padding: EdgeInsets.only(left: 30, top: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "测试列",
            style: TextStyle(
              fontSize: 16,
              decorationStyle: TextDecorationStyle.dashed,
            ),
          ),
          Text(
            "测试列",
            style: TextStyle(
              fontSize: 16,
              decorationStyle: TextDecorationStyle.dashed,
            ),
          ),
          Text(
            "测试列",
            style: TextStyle(
              fontSize: 16,
              decorationStyle: TextDecorationStyle.dashed,
            ),
          ),
          Text(
            "测试列",
            style: TextStyle(
              fontSize: 16,
              decorationStyle: TextDecorationStyle.dashed,
            ),
          ),
        ],
      ),
    );
  }

  Widget testExpand() {
    return Container(
      // height: 400,
      // width: 400,
      color: Colors.green,
      // padding: EdgeInsets.only(left: 30, top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.black,
            ),
          ),
          Expanded(
            // flex: 2,
            child: Container(
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }

  Widget testHomeWork() {
    return Container(
      color: Colors.blue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10, right: 10, top: 100),
            child: Container(
              height: 200,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10, top: 10),
            child: Row(
              children: [
                Expanded(
                    flex: 2,
                    child: Container(
                      height: 200,
                      color: Colors.red,
                    )),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin:
                              EdgeInsets.only(left: 10, right: 10, bottom: 10),
                          height: 95,
                          color: Colors.green,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10, right: 10),
                          height: 95,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
