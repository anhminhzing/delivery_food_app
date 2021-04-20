import 'package:delivery_food_app/routes/main_route.dart';
import 'package:delivery_food_app/screens/navigation/screen1.dart';
import 'package:delivery_food_app/screens/navigation/screen2.dart';
import 'package:delivery_food_app/screens/navigation/screen3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainNavigationPage extends StatefulWidget {
  static final GlobalKey<NavigatorState> screen1GlobalKey =
      GlobalKey(debugLabel: 'screen1NavigatorKey');
  static final GlobalKey<NavigatorState> screen2GlobalKey =
      GlobalKey(debugLabel: 'screen2NavigatorKey');
  static final GlobalKey<NavigatorState> screen3GlobalKey =
      GlobalKey(debugLabel: 'screen3NavigatorKey');

  @override
  _MainNavigationPageState createState() => _MainNavigationPageState();
}

class _MainNavigationPageState extends State<MainNavigationPage> {
  GlobalKey<NavigatorState> get screen1GlobalKey =>
      MainNavigationPage.screen1GlobalKey;
  GlobalKey<NavigatorState> get screen2GlobalKey =>
      MainNavigationPage.screen2GlobalKey;
  GlobalKey<NavigatorState> get screen3GlobalKey =>
      MainNavigationPage.screen3GlobalKey;

  CupertinoTabController _tabController;
  List<Widget> testScreens;
  int oldIndex;

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  @override
  void initState() {
    testScreens = [
      CupertinoTabView(
        builder: (context) {
          return Screen1();
        },
        navigatorKey: screen1GlobalKey,
        // onGenerateRoute: AppRoute.buildRouteScreen1,
      ),
      CupertinoTabView(
        builder: (context) {
          return Screen2();
        },
        navigatorKey: screen2GlobalKey,
        // onGenerateRoute: AppRoute.buildRouteScreen2,
      ),
      CupertinoTabView(
        builder: (context) {
          return Screen3();
        },
        navigatorKey: screen3GlobalKey,
        // onGenerateRoute: AppRoute.buildRouteScreen3,
      ),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CupertinoTabScaffold(
        controller: _tabController,
        tabBuilder: (context, index) {
          return testScreens[index];
        },
        tabBar: CupertinoTabBar(
          onTap: _onTap,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Screen 1'),
            BottomNavigationBarItem(
                icon: Icon(Icons.umbrella), label: 'Screen 2'),
            BottomNavigationBarItem(
                icon: Icon(Icons.access_alarm), label: 'Screen 3'),
          ],
        ),
      ),
    );
  }

  void _onTap(int index) {}
}
