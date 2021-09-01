import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProductInfoPage extends StatefulWidget {
  final productId;
  ProductInfoPage({this.productId});
  @override
  _ProductInfoPageState createState() =>
      _ProductInfoPageState(productId: this.productId);
}

class _ProductInfoPageState extends State<ProductInfoPage> {
  final productId;
  _ProductInfoPageState({this.productId});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('商品详情'),
      ),
      body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Center(
                child: Container(
                  height: 300,
                  width: 300,
                  color: Colors.green,
                  // 加载本地图片
                  // child: Image.asset(
                  //   "assets/image/picture.jpeg",
                  //   fit: BoxFit.cover,
                  // ),
                  // 加载网路图片，本地缓存
                  child: CachedNetworkImage(
                    imageUrl:
                        "http://pic.baike.soso.com/p/20130828/20130828161137-1346445960.jpg",
                    imageBuilder: (context, imageProvider) => Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: imageProvider,
                          fit: BoxFit.cover,
                          colorFilter:
                              ColorFilter.mode(Colors.red, BlendMode.colorBurn),
                        ),
                      ),
                    ),
                    placeholder: (context, url) => CircularProgressIndicator(),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "商品id: ${this.productId.toString()}",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ],
          )),
    );
  }
}
