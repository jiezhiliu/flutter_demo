import 'package:flutter/material.dart';
import 'package:flutter_test_demo/res/listData.dart';

void main() => runApp(MaterialApp(
      home: ListViewTest(),
    ));

class ListViewTest extends StatefulWidget {
  @override
  _ListViewTestState createState() => _ListViewTestState();
}

class _ListViewTestState extends State<ListViewTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('text'),
      ),
      // body: test01(),
      body: test02(),
    );
  }

  Widget test01() {
    return Container(
      child: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.phone_iphone),
            title: Text("这是title"),
            subtitle: Text("这是subTitle"),
          ),
          ListTile(
            title: Text("这是title"),
            subtitle: Text("这是subTitle"),
            trailing: Icon(Icons.phone_iphone),
          ),
          ListTile(
            leading: Icon(Icons.phone_iphone),
            title: Text("这是title"),
            subtitle: Text("这是subTitle"),
            trailing: Icon(Icons.phone_iphone),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("这是title"),
            subtitle: Text("这是subTitle"),
          ),
          ListTile(
            leading: Icon(Icons.phone_iphone),
            title: Text("这是title"),
            subtitle: Text("这是subTitle"),
            trailing: Icon(Icons.settings_accessibility_outlined),
          ),
          ListTile(
            leading: Icon(Icons.phone_iphone),
            title: Text("这是title"),
            subtitle: Text("这是subTitle"),
          ),
          ListTile(
            title: Text("这是title"),
            subtitle: Text("这是subTitle"),
            trailing: Icon(Icons.phone_iphone),
          ),
          ListTile(
            leading: Icon(Icons.phone_iphone),
            title: Text("这是title"),
            subtitle: Text("这是subTitle"),
            trailing: Icon(Icons.phone_iphone),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("这是title"),
            subtitle: Text("这是subTitle"),
          ),
          ListTile(
            leading: Icon(Icons.phone_iphone),
            title: Text("这是title"),
            subtitle: Text("这是subTitle"),
            trailing: Icon(Icons.settings_accessibility_outlined),
          ),
        ],
      ),
    );
  }

  Widget test02() {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: listData.length,
        itemBuilder: (context, index) {
          return Container(
            // width: 100,
            // height: 400,
            // color: Colors.green,
            child: ListTile(
              leading: Image.network(listData[index]["imageUrl"].toString()),
              title: Text(listData[index]["title"]),
              subtitle: Text(
                listData[index]["description"],
                style: TextStyle(
                  fontSize: 20,
                ),
                overflow: TextOverflow.ellipsis,
              ),
              trailing: Icon(Icons.settings_input_hdmi_outlined),
            ),
          );
        });
  }
}
