import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DingTalkRoute extends StatefulWidget {
  DingTalkRoute({Key key}) : super(key: key);
  @override
  _DingTalkRouteState createState() => _DingTalkRouteState();
}

class _DingTalkRouteState extends State<DingTalkRoute>
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
        backgroundColor: Colors.white,
        leading: UnconstrainedBox(
          child: ClipOval(
            child: Container(
              alignment: Alignment.center,
              width: 35,
              height: 35,
              color: Colors.blue,
              child: Text(
                '乐荣',
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {},
          ),
        ],
      ),
      drawer: MyDrawer(),
      body: Column(
        children: <Widget>[
          Container(
            height: 60,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: TextField(
              decoration: InputDecoration(
                  hintText: '搜索',
                  hintStyle: TextStyle(
                      height: 0.5,
                      color: Colors.black26,
                      textBaseline: TextBaseline.alphabetic),
                  // fillColor: Color(0xECEEF0),
                  fillColor: Color(0xFFECEEF0),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  prefixIcon: Icon(Icons.search)),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                height: 20,
                decoration: BoxDecoration(
                    border: Border(
                        right: BorderSide(width: 1, color: Colors.grey))),
                child: FlatButton.icon(
                  icon: Icon(
                    Icons.calendar_today,
                    size: 20,
                  ),
                  onPressed: () {},
                  label: Text('日历'),
                ),
              ),
              FlatButton.icon(
                icon: Icon(Icons.schedule),
                onPressed: () {},
                label: Text('待办'),
              ),
              FlatButton.icon(
                icon: Icon(Icons.schedule),
                onPressed: () {},
                label: Text('日历'),
              )
            ],
          )
        ],
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
