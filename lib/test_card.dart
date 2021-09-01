import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_test_demo/res/listData.dart';

// void main() => runApp(MaterialApp(
//       home: TestCard(),
//     ));

class TestCard extends StatefulWidget {
  @override
  _TestCardState createState() => _TestCardState();
}

class _TestCardState extends State<TestCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('测试Card'),
      ),
      // body: testAspectRatio(),
      body: testCard(),
    );
  }

  /// AspectRatio
  Widget testAspectRatio() {
    return Container(
      width: 400,
      color: Colors.green,
      child: AspectRatio(
        aspectRatio: 4 / 1,
      ),
    );
  }

  Widget testCard() {
    return ListView(
      children: listData.map((value) {
        return Card(
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Image.network(
                    value["imageUrl"].toString(),
                    fit: BoxFit.cover,
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(value["imageUrl"].toString()),
                  ),
                  title: Text(value["title"]),
                  subtitle: Text(
                    value["description"],
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ],
            ));
      }).toList(),
    );
  }
}
