import 'package:flutter/material.dart';
import 'package:flutter_test_demo/my_tabs.dart';
import 'package:flutter_test_demo/page/card_swiper_page.dart';
import 'package:flutter_test_demo/page/contacts_page.dart';
import 'package:flutter_test_demo/page/data_refresh_page.dart';
import 'package:flutter_test_demo/page/demo_home_page.dart';
import 'package:flutter_test_demo/page/dio_page.dart';
import 'package:flutter_test_demo/page/drawer_hand_page.dart';
import 'package:flutter_test_demo/page/find_page.dart';
import 'package:flutter_test_demo/page/home_page.dart';
import 'package:flutter_test_demo/page/http_page.dart';
import 'package:flutter_test_demo/page/login_page.dart';
import 'package:flutter_test_demo/page/message_page.dart';
import 'package:flutter_test_demo/page/my_popup_window_page.dart';
import 'package:flutter_test_demo/page/popup_window_page.dart';
import 'package:flutter_test_demo/page/product_info_page.dart';
import 'package:flutter_test_demo/page/product_page.dart';
import 'package:flutter_test_demo/page/publish_page.dart';
import 'package:flutter_test_demo/page/relation_account_page.dart';
import 'package:flutter_test_demo/page/send_page.dart';
import 'package:flutter_test_demo/page/settting_page.dart';
import 'package:flutter_test_demo/page/sms_page.dart';
import 'package:flutter_test_demo/page/tabs_bar_page.dart';
import 'package:flutter_test_demo/page/time_page.dart';
import 'package:flutter_test_demo/page/time_pick_page.dart';
import 'package:flutter_test_demo/page/time_pick_pub_page.dart';
import 'package:flutter_test_demo/page/control_widget_page.dart';

// 配置路由
final Map<String, dynamic> routes = {
  '/': (context, {arguments}) => DemoHomePage(),
  '/mytabs': (context, {arguments}) => MyTabs(),
  '/homepage': (context, {arguments}) => HomePage(arguments: arguments),
  '/settingpage': (context, {arguments}) => SettingPage(arguments: arguments),
  '/sendpage': (context, {argument}) => SendPage(),
  '/productpage': (context, {arguments}) => ProductPage(arguments: arguments),
  '/productinfopage': (context, {arguments}) =>
      ProductInfoPage(productId: arguments),
  '/messagepage': (context, {arguments}) => MessagePage(),
  '/contactspage': (context, {arguments}) => ContactsPage(),
  '/findpage': (context, {arguments}) => FindPage(),
  '/loginpage': (context, {arguments}) => LoginPage(),
  '/smspage': (context, {arguments}) => SmsPage(),
  '/relationpage': (context, {arguments}) =>
      RelationAccountPage(arguments: arguments),
  '/tabsbarpage': (context, {arguments}) => TabsBarPage(),
  '/publishpage': (context, {arguments}) => PublishPage(),
  '/drawerhandpage': (context, {arguments}) => DrawerHandPage(),
  '/timepickpage': (context, {arguments}) => TimePickPage(),
  '/timepickpubpage': (context, {arguments}) => TimePickPubPage(),
  '/timepage': (context, {arguments}) => TimePage(),
  '/cardswiperpage': (context, {arguments}) => CardSwiperPage(),
  '/popupwindowpage': (context, {arguments}) => PopupWindowPage(),
  '/mypopupwindowpage': (context, {arguments}) => MyPopupWindowPage(
        content: arguments,
      ),
  '/httppage': (context, {arguments}) => HttpPage(),
  '/diopage': (context, {arguments}) => DioPage(),
  '/datarefreshpage': (context, {arguments}) => DataRefreshPage(),
  '/controlwidgetpage': (context, {arguments}) => ControlWidgetPage(),
};

dynamic onGenerateRoute = (RouteSettings routeSettings) {
  // 统一处理
  final routeName = routeSettings.name;
  final Function pageContentBuilder = routes[routeName];
  if (pageContentBuilder != null) {
    if (routeSettings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: routeSettings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
