import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  final arguments;
  ProductPage({this.arguments});
  @override
  _ProductPageState createState() =>
      _ProductPageState(arguments: this.arguments);
}

class _ProductPageState extends State<ProductPage> {
  final arguments;
  List data = [];
  _ProductPageState({this.arguments});
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data = this.arguments["data"] as List;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('商品界面'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: GridView.count(
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          crossAxisCount: 3,
          children: productData(),
        ),
      ),
    );
  }

  List<Widget> productData() {
    return data.map((value) {
      return InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/productinfopage',
              arguments: value["productId"].toString());
        },
        child: Container(
          // color: Colors.blue,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.red,
              width: 1,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: Center(
            child: Text(
              value["name"].toString(),
              style: TextStyle(
                color: Colors.blue,
                fontSize: 30,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        ),
      );
    }).toList();
  }
}
