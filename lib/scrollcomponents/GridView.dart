import 'package:flutter/material.dart';

class GridViewRoute extends StatefulWidget {
  GridViewRoute({Key key}) : super(key: key);
  @override
  _GridViewRouteState createState() => _GridViewRouteState();
}

class _GridViewRouteState extends State<GridViewRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text('ListViewRoute'),
        ),
        body: GridView(
          gridDelegate:
              SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 200),
          children: <Widget>[
            Icon(Icons.ac_unit),
            Icon(Icons.airport_shuttle),
            Icon(Icons.all_inclusive),
            Icon(Icons.beach_access),
            Icon(Icons.cake),
            Icon(Icons.free_breakfast)
          ],
        ));
  }
}
