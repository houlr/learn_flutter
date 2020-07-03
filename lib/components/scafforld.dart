import 'package:flutter/material.dart';

class ScaffoldRoute extends StatefulWidget {
  ScaffoldRoute({Key key}) : super(key: key);
  @override
  _ScafforldRouteState createState() => _ScafforldRouteState();
}

class _ScafforldRouteState extends State<ScaffoldRoute>
    with SingleTickerProviderStateMixin {
  int _selectIndex = 0;
  TabController _tabController;
  List tabs = ['新闻', '历史', '图片'];

  void onTapBottomBar(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  void onPressFloat() {
    print('pressFloat');
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('ScafforldRoute'),
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: Icon(
                Icons.dashboard,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        bottom: TabBar(
          tabs: tabs
              .map((e) => Tab(
                    text: e,
                  ))
              .toList(),
          controller: _tabController,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {},
          ),
        ],
      ),
      drawer: MyDrawer(),
      body: TabBarView(
        controller: _tabController,
        children: tabs.map((e) {
          return (Container(
              child: Text(
            e,
            textScaleFactor: 4,
          )));
        }).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: onPressFloat,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: _selectIndex,
      //   onTap: onTapBottomBar,
      //   type: BottomNavigationBarType.shifting,
      //   selectedItemColor: Colors.red,
      //   unselectedItemColor: Colors.blue,
      //   items: <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('home')),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.business), title: Text('business')),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.school), title: Text('school')),
      //   ],
      // ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: CircularNotchedRectangle(),
        child: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {},
            ),
            SizedBox(),
            IconButton(
              icon: Icon(Icons.business),
              onPressed: () {},
            )
          ],
          mainAxisAlignment: MainAxisAlignment.spaceAround,
        ),
      ),
    );
  }
}

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 38),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: ClipOval(
                      child: Image.asset(
                        'image/t.png',
                        width: 40,
                        height: 40,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text('houlrrr')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
