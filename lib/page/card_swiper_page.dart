import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter_test_demo/res/listData.dart';

class CardSwiperPage extends StatefulWidget {
  @override
  _CardSwiperPageState createState() => _CardSwiperPageState();
}

class _CardSwiperPageState extends State<CardSwiperPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('轮播图'),
      ),
      body: Container(
        child: AspectRatio(
          aspectRatio: 16 / 9,
          // child: test01(),
          // child: test02(),
          // child: test03(),
          child: test04(),
        ),
      ),
    );
  }

  Widget test01() {
    return Swiper(
      itemBuilder: (BuildContext context, int index) {
        return Image.network(
          listData[index]["imageUrl"],
          fit: BoxFit.cover,
        );
      },
      autoplay: true,

      /// 下方的选择
      pagination: SwiperPagination(),
      onTap: (index) {
        print("选择了第$index个图片");
      },
      onIndexChanged: (index) {
        print("播放第$index个图片");
      },
      // duration: 600,

      /// 左右箭头
      control: SwiperControl(),
      itemCount: listData.length,
      viewportFraction: 0.8,
      scale: 0.9,
    );
  }

  Widget test02() {
    return Swiper(
      itemBuilder: (BuildContext context, int index) {
        return Image.network(
          listData[index]["imageUrl"],
          fit: BoxFit.cover,
        );
      },
      itemCount: listData.length,
      itemWidth: 300.0,
      autoplay: true,
      pagination: SwiperPagination(),
      control: SwiperControl(),
      layout: SwiperLayout.STACK,
    );
  }

  Widget test03() {
    return Swiper(
      itemBuilder: (BuildContext context, int index) {
        return Image.network(
          listData[index]["imageUrl"],
          fit: BoxFit.cover,
        );
      },
      itemCount: listData.length,
      itemWidth: 300.0,
      itemHeight: 400.0,
      autoplay: true,
      pagination: SwiperPagination(),
      control: SwiperControl(),
      layout: SwiperLayout.TINDER,
    );
  }

  Widget test04() {
    return Swiper(
      layout: SwiperLayout.CUSTOM,
      customLayoutOption: CustomLayoutOption(startIndex: -1, stateCount: 3)
          .addRotate([-45.0 / 180, 0.0, 45.0 / 180]).addTranslate(
              [Offset(-370.0, -40.0), Offset(0.0, 0.0), Offset(370.0, -40.0)]),
      itemWidth: 300.0,
      itemHeight: 200.0,
      autoplay: true,
      pagination: SwiperPagination(),
      control: SwiperControl(),
      itemBuilder: (context, index) {
        return Container(
          color: Colors.grey,
          child: Center(
            child: Image.network(
              listData[index]["imageUrl"],
              fit: BoxFit.cover,
            ),
          ),
        );
      },
      itemCount: listData.length,
    );
  }
}
