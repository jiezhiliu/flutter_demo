import 'package:flutter/material.dart';

class MessagePage extends StatefulWidget {
  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage>
    with SingleTickerProviderStateMixin {
  List allTabs = ["最新", "已读", "未读", "拒收", "发送成功", "发送失败"];
  // ignore: avoid_init_to_null
  var tabController = null;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.tabController =
        new TabController(length: this.allTabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: this.allTabs.length,
        child: Scaffold(
          appBar: TabBar(
            controller: this.tabController,
            isScrollable: true,
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.black,
            labelStyle: TextStyle(
              fontSize: 20,
            ),
            unselectedLabelStyle: TextStyle(
              fontSize: 15,
            ),
            indicatorColor: Colors.orangeAccent,
            indicatorPadding: EdgeInsets.only(bottom: 5),
            indicatorWeight: 2.5,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: getTabs(),
          ),
          body: TabBarView(
            controller: this.tabController,
            children: getTabsView(),
          ),
        ));
  }

  List<Widget> getTabs() {
    List<Widget> widgetList = [];
    this.allTabs.forEach((element) {
      widgetList.add(Tab(
        text: element,
      ));
    });
    return widgetList;
  }

  List<Widget> getTabsView() {
    List<Widget> widgetList = [];
    for (var i = 0; i < this.allTabs.length; i++) {
      Widget listView = ListView(
        children: getTabsViewChild(i),
      );
      widgetList.add(listView);
    }
    return widgetList;
  }

  List<Widget> getTabsViewChild(int index) {
    List<Widget> widgetList = [];
    for (var i = 0; i < 20; i++) {
      widgetList.add(ListTile(
        title: Text(this.allTabs[index].toString()),
        leading: Icon(Icons.message),
      ));
    }
    return widgetList;
  }
}
