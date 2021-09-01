import 'package:flutter/material.dart';

class TabsBarPage extends StatefulWidget {
  @override
  _TabsBarPageState createState() => _TabsBarPageState();
}

class _TabsBarPageState extends State<TabsBarPage>
    with SingleTickerProviderStateMixin {
  // ignore: avoid_init_to_null
  var tabController = null;

  /// 当前选择的tab索引
  int currentIndex = 0;

  /// tabs的长度
  int tabsLength = 0;

  List allTabs = ["最新", "热门", "个性", "时尚", "推荐", "优惠"];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = new TabController(length: this.allTabs.length, vsync: this);
    tabsLength = (tabController as TabController).length;
    tabController.addListener(() {
      currentIndex = (tabController as TabController).index;
      print("当前选择的索引：$currentIndex===tab的总长度是：$tabsLength");
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: this.allTabs.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text('AppBar下方的选择框'),
            // leading: Icon(Icons.add), // 在标题前显示一个控件
            /// 在标题的右侧放置多个按钮
            actions: [
              Icon(Icons.settings),
              SizedBox(width: 20),
              Icon(Icons.search),
              SizedBox(width: 20),
            ],

            /// 背景颜色
            backgroundColor: Colors.blue,

            /// 图标icon样式
            iconTheme: IconThemeData(color: Colors.red, opacity: 0.5, size: 20),

            /// 标题是否居中显示
            centerTitle: true,
            bottom: TabBar(
              controller: tabController,
              tabs: getTabs(),

              /// 是否可以滚动
              isScrollable: true,

              /// 选择条选中文字颜色
              labelColor: Colors.yellow,

              /// 选择条未选中颜色
              unselectedLabelColor: Colors.white,

              /// 选择条选中样式
              labelStyle: TextStyle(
                fontSize: 30,
              ),

              /// 选择条未选中样式
              unselectedLabelStyle: TextStyle(
                fontSize: 20,
              ),

              /// 指示器的颜色
              indicatorColor: Colors.orangeAccent,

              /// 指示器的宽度
              indicatorWeight: 3.0,

              /// 指示器的padding
              indicatorPadding: EdgeInsets.only(bottom: 2.5),

              /// 指示器的尺寸，和文字等宽
              indicatorSize: TabBarIndicatorSize.label,

              /// 指示器的尺寸和每个tab等宽
              // indicatorSize: TabBarIndicatorSize.tab,

              // /// 指示器装饰
              // indicator: BoxDecoration(
              //   border: Border.all(color: Colors.black, width: 2),
              //   borderRadius: BorderRadius.circular(15),
              // ),
            ),
          ),
          body: TabBarView(
            children: getTabsView(),
            controller: tabController,
          ),
        ));
  }

  List<Widget> getTabs() {
    List<Widget> widgetList = [];
    this.allTabs.forEach((element) {
      widgetList.add(Tab(text: element));
    });
    return widgetList;
  }

  List<Widget> getTabsView() {
    List<Widget> widgetList = [];

    for (var i = 0; i < this.allTabs.length; i++) {
      ListView listView = ListView(
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
        leading: Icon(Icons.tab),
        title: Text(this.allTabs[index].toString()),
      ));
    }
    return widgetList;
  }
}
