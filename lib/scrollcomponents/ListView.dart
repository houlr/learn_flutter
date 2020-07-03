import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class ListViewRoute extends StatefulWidget {
  ListViewRoute({Key key}) : super(key: key);
  @override
  _ListViewRouteState createState() => _ListViewRouteState();
}

class _ListViewRouteState extends State<ListViewRoute> {
  static const loadingTag = '##loading##';
  var _words = <String>[loadingTag];

  @override
  void initState() {
    super.initState();
    _retrieveData();
  }

  @override
  Widget build(BuildContext context) {
    const divider1 = Divider(
      height: 12,
      color: Colors.red,
    );
    const divider2 = Divider(
      height: 1,
      color: Colors.blue,
    );
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text('ListViewRoute'),
        ),
        body: Column(
          children: <Widget>[
            ListTile(
              title: Text('ttttitle'),
            ),
            Expanded(
              flex: 1,
              child: ListView.separated(
                itemCount: _words.length,
                itemBuilder: (BuildContext context, int index) {
                  if (_words[index] == loadingTag) {
                    if (_words.length < 100) {
                      _retrieveData();
                      return Container(
                        padding: EdgeInsets.all(16),
                        alignment: Alignment.center,
                        child: SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                          ),
                        ),
                      );
                    } else {
                      return Container(
                        padding: EdgeInsets.all(16),
                        child: SizedBox(
                          width: 20,
                          height: 20,
                          child: Text('没有更多了'),
                        ),
                      );
                    }
                  }
                  return ListTile(
                    title: Text('$index'),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return index % 2 == 0 ? divider1 : divider2;
                },
              ),
            ),
          ],
        ));
  }

  void _retrieveData() {
    Future.delayed(Duration(seconds: 2)).then((e) {
      setState(() {
        //重新构建列表
        _words.insertAll(
            _words.length - 1,
            //每次生成20个单词
            generateWordPairs().take(20).map((e) => e.asPascalCase).toList());
      });
    });
  }
}
