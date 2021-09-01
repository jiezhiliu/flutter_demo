import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: ImageTest(),
    ));

class ImageTest extends StatefulWidget {
  @override
  _ImageTestState createState() => _ImageTestState();
}

class _ImageTestState extends State<ImageTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image测试'),
      ),
      // body: test1(),
      // body: test02(),
      body: test03(),
    );
  }

  /// 利用Container实现圆角图片
  Widget test1() {
    return Container(
      height: 300,
      width: 300,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(150),
        image: DecorationImage(
          image: new NetworkImage(
              "http://pic.baike.soso.com/p/20130828/20130828161137-1346445960.jpg"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  /// 利用ClipOval生成圆角图片
  /// 在ClipOval中image内部的height和width不起作用
  Widget test02() {
    return Container(
      height: 300,
      width: 300,
      color: Colors.green,
      child: ClipOval(
        child: Image.network(
          "http://pic.baike.soso.com/p/20130828/20130828161137-1346445960.jpg",
          fit: BoxFit.cover,
          // height和width不起作用
          height: 100,
          width: 100,
        ),
      ),
    );
  }

  /// 加载本地图片
  Widget test03() {
    return Container(
        // height: 300,
        // width: 300,
        color: Colors.green,
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Image.asset(
              "assets/image/Bg.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset(
              "assets/image/Clothes.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset(
              "assets/image/Find.png",
              fit: BoxFit.cover,
              // alignment: Alignment.topRight,
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset(
              "assets/image/MakeUp.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset(
              "assets/image/More.png",
              color: Colors.blue,
              colorBlendMode: BlendMode.color,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset(
              "assets/image/Share.png",
              fit: BoxFit.cover,
              color: Colors.red,
              colorBlendMode: BlendMode.colorBurn,

              /// 水平和垂直都要重复
              // repeat: ImageRepeat.repeat,
              // height: 20,
              // width: 20,
            ),
            SizedBox(
              height: 20,
            )
          ],
        ));
  }
}
