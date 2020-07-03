import 'package:flutter/material.dart';

class CustomScrollViewRoute extends StatefulWidget {
  CustomScrollViewRoute({Key key}) : super(key: key);
  @override
  _CustomScrollViewRouteState createState() => _CustomScrollViewRouteState();
}

class _CustomScrollViewRouteState extends State<CustomScrollViewRoute> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: false,
            expandedHeight: 250,
            flexibleSpace: FlexibleSpaceBar(
                title: Text('demo'),
                background:
                    Text('123123123123123123123123123123123123123123123'),
                centerTitle: true),
          ),
          SliverPadding(
            padding: EdgeInsets.all(15),
            sliver: new SliverGrid(
              gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                  childAspectRatio: 4.0),
              delegate: new SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.cyan[100 * (index % 9)],
                  child: Text('$index'),
                );
              }, childCount: 20),
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 50,
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.lightBlue[100 * (index % 9)],
                child: new Text('list item $index'),
              );
            }, childCount: 90),
          )
        ],
      ),
    );
  }
}
