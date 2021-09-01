import 'package:flutter/material.dart';
import 'package:flutter_test_demo/my_tabs.dart';

class TestTabs extends StatefulWidget {
  @override
  _TestTabsState createState() => _TestTabsState();
}

class _TestTabsState extends State<TestTabs> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyTabs(),
    );
  }
}
