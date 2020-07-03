import 'package:flutter/material.dart';

class ScrollControllerListViewRoute extends StatefulWidget {
  ScrollControllerListViewRoute({Key key}) : super(key: key);
  @override
  _ScrollControllerListViewRouteState createState() =>
      _ScrollControllerListViewRouteState();
}

class _ScrollControllerListViewRouteState
    extends State<ScrollControllerListViewRoute> {
  ScrollController _scrollcontroller =
      new ScrollController(keepScrollOffset: true);
  bool _showTapButton = false;
  PageStorageKey _pageStorageKey1 = new PageStorageKey(1);

  @override
  void initState() {
    super.initState();
    _scrollcontroller.addListener(() {
      print(_scrollcontroller.offset);
      var offset = _scrollcontroller.offset;
      if (offset > 1000 && !_showTapButton) {
        setState(() {
          _showTapButton = true;
        });
      } else if (offset < 1000 && _showTapButton) {
        setState(() {
          _showTapButton = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('ScrollControllerListViewRoute'),
      ),
      body: ListView.builder(
        key: _pageStorageKey1,
        controller: _scrollcontroller,
        itemExtent: 50,
        itemCount: 100,
        itemBuilder: (BuildContext context, int index) {
          return (ListTile(
            title: Text('$index'),
          ));
        },
      ),
      floatingActionButton: !_showTapButton
          ? null
          : FloatingActionButton(
              onPressed: () {
                _scrollcontroller.animateTo(0,
                    duration: Duration(milliseconds: 200), curve: Curves.ease);
              },
              child: Text('123'),
            ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _scrollcontroller.dispose();
  }
}
