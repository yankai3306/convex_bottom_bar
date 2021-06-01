import 'package:convex_app_bar_example/convex_button_demo.dart';
import 'package:convex_app_bar_example/custom_appbar_sample.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

import 'default_appbar_demo.dart';

void main() => runApp(HomeTabPage());

class HomeTabPage extends StatefulWidget {
  @override
  _HomeTabPageState createState() => _HomeTabPageState();
}

class _HomeTabPageState extends State<HomeTabPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  var _tabItems = [
    TabItem(
      icon: Image.asset("images/sample-1.png", width: 20, height: 20,),
      activeIcon: Container(
        child: Image.asset("images/sample-1-2.png", width: 20, height: 20,),
      ),
      titleWidget: Text("123"),
      activeTitleWidget: Text(
        "123",
        style: TextStyle(color: Colors.tealAccent),
      ),
    ),
    TabItem(
      icon: Image.asset("images/sample-1.png", width: 20, height: 20,),
      activeIcon: Container(
        child: Image.asset("images/sample-1-2.png", width: 20, height: 20,),
      ),
      titleWidget: Container(
        height: 20,
        child: Text("123"),
      ),
      activeTitleWidget: Container(
        height: 20,
        child: Text(
          "123",
          style: TextStyle(color: Colors.tealAccent),
        ),
      ),
    ),
    TabItem(
        icon: Image.asset("images/sample-1.png"),
        activeIcon: Container(
          child: Image.asset("images/sample-1-2.png"),
        ),
        title: 'STORY'),
    TabItem(
        icon: Image.asset("images/sample-1.png"),
        activeIcon: Container(
          child: Image.asset("images/sample-1-2.png"),
        ),
        title: 'POSTS'),
    TabItem(
        icon: Image.asset("images/sample-1.png"),
        activeIcon: Container(
          child: Image.asset("images/sample-1-2.png"),
        ),
        title: 'CHARTS'),
  ];

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(initialIndex: 0, length: _tabItems.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text("User Name"),
        ),
        body: TabBarView(
            controller: _tabController,
            physics: null, // 非VIP用户禁止滑动TabBar
            children: <Widget>[
              HomeTab1(),
              HomeTab2(),
              HomeTab3(),
              HomeTab4(),
              HomeTab5(),
            ]),
        bottomNavigationBar: ConvexAppBar(
          controller: _tabController,
          items: _tabItems,
          activeColor: Colors.tealAccent,
          style: TabStyle.react,
          curveSize: 0,
          backgroundColor: Colors.black38,
          onTabNotify: (index) {
            if (index == 0 || index == 1 || index == 2 || index == 3) {
              return true;
            } else {
              return false;
            }
          },
          onTap: (int index) {},
        ),
      ),
    );
  }
}

class HomeTab1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
    );
  }
}

class HomeTab2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
    );
  }
}

class HomeTab3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
    );
  }
}

class HomeTab4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
    );
  }
}

class HomeTab5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyan,
    );
  }
}
