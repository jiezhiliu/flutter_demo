import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: AlignTest(),
    ));

class AlignTest extends StatefulWidget {
  @override
  _AlignTestState createState() => _AlignTestState();
}

class _AlignTestState extends State<AlignTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('text'),
      ),
      // body: Container(
      //   height: 120,
      //   width: 120,
      //   color: Colors.blue[50],
      //   child: Align(
      //     alignment: Alignment.topLeft,
      //     child: FlutterLogo(
      //       size: 60,
      //     ),
      //   ),
      // ),
      // body: Align(
      //   widthFactor: 2,
      //   heightFactor: 2,
      //   alignment: Alignment.topRight,
      //   child: FlutterLogo(
      //     size: 60,
      //   ),
      // ),
      // body: Align(
      //   widthFactor: 2,
      //   heightFactor: 2,
      //   alignment: Alignment(0, 0),
      //   child: FlutterLogo(
      //     size: 60,
      //   ),
      // ),
      // body: Container(
      //   height: 120,
      //   width: 120,
      //   color: Colors.blue[50],
      //   child: Align(
      //     alignment: FractionalOffset(1, 1),
      //     child: FlutterLogo(
      //       size: 60,
      //     ),
      //   ),
      // ),
      // body: Container(
      //   child: Column(
      //     children: [
      //       DecoratedBox(
      //         decoration: BoxDecoration(
      //           color: Colors.red,
      //         ),
      //         child: Center(
      //           child: Text("xxx"),
      //         ),
      //       ),
      //       DecoratedBox(
      //         decoration: BoxDecoration(
      //           color: Colors.red,
      //         ),
      //         child: Center(
      //           child: Text("xxx"),
      //           widthFactor: 1,
      //           heightFactor: 1,
      //         ),
      //       )
      //     ],
      //   ),
      // ),
      body: Container(
        child: Stack(
          alignment: Alignment(1, 0),
          children: [
            Container(
              height: 300,
              width: 300,
              color: Colors.red,
            ),
            Text(
              "这是一个文本",
              style: TextStyle(
                color: Colors.green,
              ),
            ),
            Container(
              margin: EdgeInsets.all(100),
              height: 400,
              width: 400,
              color: Colors.blue,
            ),
            Container(
              margin: EdgeInsets.all(100),
              height: 400,
              width: 400,
              color: Colors.green,
            ),
          ],
        ),
      ),
      // body: Center(
      //   child: Container(
      //     height: 400,
      //     width: 400,
      //     color: Colors.red,
      //     child: Stack(
      //       alignment: Alignment.center,
      //       children: [
      //         Align(
      //           alignment: Alignment.center,
      //           child: Text("第一行"),
      //         ),
      //         Align(
      //           alignment: Alignment(1, 0.5),
      //           child: Text("第二行"),
      //         ),
      //         Align(
      //           alignment: Alignment.bottomLeft,
      //           child: Text("第三行"),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
      // body: Center(
      //   child: Container(
      //     height: 400,
      //     width: 400,
      //     color: Colors.green,
      //     child: Stack(
      //       children: [
      //         Positioned(
      //           left: 30,
      //           child: Icon(Icons.home),
      //         ),
      //         Positioned(
      //           bottom: 60,
      //           right: 90,
      //           child: Icon(Icons.settings),
      //         ),
      //         Positioned(
      //           left: 30,
      //           top: 90,
      //           child: Icon(Icons.send),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
