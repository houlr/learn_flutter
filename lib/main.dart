import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

import './components/form.dart';
import './components/progress.dart';
import './components/rowcolumn.dart';
import './components/flex.dart';
import './components/wrap.dart';
import './components/flow.dart';
import './components/stack.dart';
import './components/align.dart';
import './components/constrainedBox.dart';
import './components/sizeBox.dart';
import './components/decoratedBox.dart';
import './components/transform.dart';
import './components/container.dart';
import './components/scafforld.dart';
import './components/dingtalk.dart';
import './components/clip.dart';
import './scrollcomponents/SingleChildScrollView.dart';
import './scrollcomponents/ListView.dart';
import './scrollcomponents/GridView.dart';
import './scrollcomponents/CustomScrollView.dart';
import './scrollcomponents/ScrollControllerListView.dart';
import './scrollcomponents/ScrollNotification.dart';
import './functionalcomponents/Inheritedwidget.dart';
import './functionalcomponents/themedata.dart';
import './functionalcomponents/futurebuilder.dart';
import './functionalcomponents/streambuilder.dart';
import './functionalcomponents/dialog.dart';
import './events/listener.dart';
import './events/gesturedetector.dart';
import './events/notification.dart';
import './animation/animation.dart';
import './animation/pagebuilder.dart';
import './animation/faderouter.dart';
import './animation/hero.dart';
import './animation/stagging.dart';
import './animation/animatedswitcher.dart';
import './animation/animateddecorated.dart';

void main() => runApp(MyApp());

routes(BuildContext context) {
  return {
    '/': (BuildContext context) => MyHomePage(
          title:
              'flutter demo home flutter demo home flutter demo home flutter demo home',
        ),
    'echo_page': (context) => EchoRoute(),
    "new_page": (context) => new NewRoute(),
    "form_page": (context) => new FormTestRoute(),
    "progress_page": (context) => new ProgerssTestRoute(),
    "rowcolumn_page": (context) => new RowColumnRoute(),
    "flex_page": (context) => new FlexRoute(),
    "wrap": (context) => new WrapRoute(),
    "flow": (context) => new FlowRoute(),
    "stack": (context) => new StackRoute(),
    "align": (context) => new AlignRoute(),
    "ConstrainedBox": (context) => new ConstrainedBoxRoute(),
    "SizeBoxRoute": (context) => new SizeBoxRoute(),
    "DecoratedBoxRoute": (context) => new DecoratedBoxRoute(),
    "TransformRoute": (context) => new TransformRoute(),
    "ContainerRoute": (context) => new ContainerRoute(),
    "ScaffoldRoute": (context) => new ScaffoldRoute(),
    "DingTalkRoute": (context) => new DingTalkRoute(),
    "ClipRoute": (context) => new ClipRoute(),
    "SingleChildScrollViewRoute": (context) => new SingleChildScrollViewRoute(),
    "ListViewRoute": (context) => new ListViewRoute(),
    "GridViewRoute": (context) => new GridViewRoute(),
    "CustomScrollViewRoute": (context) => new CustomScrollViewRoute(),
    "ScrollControllerListViewRoute": (context) =>
        new ScrollControllerListViewRoute(),
    "ScrollNotificationRoute": (context) => new ScrollNotificationRoute(),
    "InheritedWidgetRoute": (context) => new InheritedWidgetRoute(),
    "ThemeDataRoute": (context) => new ThemeDataRoute(),
    "FutureBuilderRoute": (context) => new FutureBuilderRoute(),
    "StreamBuilderRoute": (context) => new StreamBuilderRoute(),
    "DialogRoute": (context) => new DialogRoute(),
    "ListenerRoute": (context) => new ListenerRoute(),
    "GestureDetectorRoute": (context) => new GestureDetectorRoute(),
    "NotificationRoute": (context) => new NotificationRoute(),
    "AnimationRoute": (context) => new AnimationRoute(),
    "StaggingRoute": (context) => new StaggingRoute(),
    "AnimatedSwitcherRoute": (context) => new AnimatedSwitcherRoute(),
    "AnimatedDecoratedRoute": (context) => new AnimatedDecoratedRoute(),
  };
}

class MyApp extends StatelessWidget {
  // final GlobalKey _appkey = new GlobalKey();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // key: _appkey,
        title: 'Flutter Dem',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        // home: MyHomePage(title: 'Flutter Demo Home Page'),
        initialRoute: '/',
        routes: routes(context)
        // {
        //   "new_page": (context) => new NewRoute(),
        //   "form_page": (context) => new FormTestRoute(),
        //   "progress_page": (context) => new ProgerssTestRoute(),
        //   "rowcolumn_page": (context) => new RowColumnRoute(),
        //   "flex_page": (context) => new FlexRoute(),
        //   "wrap": (context) => new WrapRoute(),
        //   "flow": (context) => new FlowRoute(),
        //   "stack": (context) => new StackRoute(),
        //   "align": (context) => new AlignRoute(),
        //   "ConstrainedBox": (context) => new ConstrainedBoxRoute(),
        //   "SizeBoxRoute": (context) => new SizeBoxRoute(),
        //   '/': (BuildContext context) => MyHomePage(
        //         title:
        //             'flutter demo home flutter demo home flutter demo home flutter demo home',
        //       ),
        //   'echo_page': (context) => EchoRoute()
        // }
        );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    TextEditingController _textController = TextEditingController();
    _textController.addListener(() {
      print(_textController.text);
    });

    final _routeList = routes(context).keys;
    DateTime _lastPressAt;
    List<Widget> list = [];

    for (var item in _routeList) {
      list.add(new FlatButton(
        child: Text(
          'open $item',
        ),
        onPressed: () {
          Navigator.pushNamed(context, '$item');
          // Navigator.push(context, MaterialPageRoute(builder: (context) {
          //   return NewRoute();
          // }));
        },
      ));
    }
    list
      ..add(new FlatButton(
        child: Text(
          'open pagebuilder',
        ),
        onPressed: () {
          Navigator.push(
              context,
              PageRouteBuilder(
                  pageBuilder: (BuildContext context, Animation animation,
                      Animation secondaryAnimation) {
                    return new FadeTransition(
                        opacity: animation, child: PageBuilderRoute());
                  },
                  transitionDuration: Duration(milliseconds: 500)));
        },
      ))
      ..add(new FlatButton(
        child: Text(
          'open pagebuilder',
        ),
        onPressed: () {
          Navigator.push(context, FadeRoute(builder: (context) {
            return PageBuilderRoute();
          }));
        },
      ))
      ..add(new FlatButton(
        child: Hero(
            tag: 'avator',
            child: ClipOval(child: Image.asset('image/t.png', width: 50))),
        onPressed: () {
          Navigator.push(context, FadeRoute(builder: (context) {
            return HeroRoute();
          }));
        },
      ));
    list = list.reversed.toList();

    return Scaffold(
      appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(
        widget.title,
      )),
      body: WillPopScope(
        onWillPop: () async {
          if (_lastPressAt == null ||
              DateTime.now().difference(_lastPressAt) > Duration(seconds: 1)) {
            _lastPressAt = DateTime.now();
            Fluttertoast.showToast(msg: '再按一次推出了！');
            return false;
          }
          return true;
        },
        child: SingleChildScrollView(
          child: Center(
            child: Wrap(
              children: list

              // TextField(
              //   controller: _textController,
              //   autofocus: false,
              //   textInputAction: TextInputAction.search,
              // ),
              // SwitchAndCheckBoxTest(),
              // Text(
              //   'You have pushed the button this many times:',
              // ),
              // Text(
              //   '$_counter',
              //   style: Theme.of(context).textTheme.display1,
              // ),
              // FlatButton(
              //   child: Text(
              //     'open Router',
              //     // textAlign: TextAlign.center,
              //     // textDirection: TextDirection.ltr,
              //     // softWrap: true,
              //     // overflow: TextOverflow.ellipsis,
              //     // maxLines: 2,
              //     // textScaleFactor: 2,
              //     // semanticsLabel: '123123123',
              //     // textWidthBasis: TextWidthBasis.parent,
              //     // style: TextStyle(
              //     //     fontWeight: FontWeight.bold,
              //     //     decoration: TextDecoration.underline,
              //     //     decorationColor: Colors.grey,
              //     //     decorationStyle: TextDecorationStyle.dashed),
              //   ),
              //   textColor: Colors.blue,
              //   onPressed: () {
              //     Navigator.pushNamed(context, 'new_page');
              //     // Navigator.push(context, MaterialPageRoute(builder: (context) {
              //     //   return NewRoute();
              //     // }));
              //   },
              // ),
              // FlatButton(
              //   child: Text(
              //     'open form_page',
              //   ),
              //   onPressed: () {
              //     Navigator.pushNamed(context, 'form_page');
              //     // Navigator.push(context, MaterialPageRoute(builder: (context) {
              //     //   return NewRoute();
              //     // }));
              //   },
              // ),
              // FlatButton(
              //   child: Text(
              //     'open progress_page',
              //   ),
              //   onPressed: () {
              //     Navigator.pushNamed(context, 'progress_page');
              //     // Navigator.push(context, MaterialPageRoute(builder: (context) {
              //     //   return NewRoute();
              //     // }));
              //   },
              // ),
              // FlatButton(
              //   child: Text(
              //     'open rowcolumn_page',
              //   ),
              //   onPressed: () {
              //     Navigator.pushNamed(context, 'rowcolumn_page');
              //     // Navigator.push(context, MaterialPageRoute(builder: (context) {
              //     //   return NewRoute();
              //     // }));
              //   },
              // ),
              // FlatButton(
              //   child: Text(
              //     'open flex_page',
              //   ),
              //   onPressed: () {
              //     Navigator.pushNamed(context, 'flex_page');
              //     // Navigator.push(context, MaterialPageRoute(builder: (context) {
              //     //   return NewRoute();
              //     // }));
              //   },
              // ),
              // FlatButton(
              //   child: Text(
              //     'open wrap',
              //   ),
              //   onPressed: () {
              //     Navigator.pushNamed(context, 'wrap');
              //     // Navigator.push(context, MaterialPageRoute(builder: (context) {
              //     //   return NewRoute();
              //     // }));
              //   },
              // ),
              // FlatButton(
              //   child: Text(
              //     'open flow',
              //   ),
              //   onPressed: () {
              //     Navigator.pushNamed(context, 'flow');
              //     // Navigator.push(context, MaterialPageRoute(builder: (context) {
              //     //   return NewRoute();
              //     // }));
              //   },
              // ),
              // FlatButton(
              //   child: Text(
              //     'open stack',
              //   ),
              //   onPressed: () {
              //     Navigator.pushNamed(context, 'stack');
              //     // Navigator.push(context, MaterialPageRoute(builder: (context) {
              //     //   return NewRoute();
              //     // }));
              //   },
              // ),
              // FlatButton(
              //   child: Text(
              //     'open align',
              //   ),
              //   onPressed: () {
              //     Navigator.pushNamed(context, 'align');
              //     // Navigator.push(context, MaterialPageRoute(builder: (context) {
              //     //   return NewRoute();
              //     // }));
              //   },
              // ),
              // FlatButton(
              //   child: Text(
              //     'open ConstrainedBox',
              //   ),
              //   onPressed: () {
              //     Navigator.pushNamed(context, 'ConstrainedBox');
              //     // Navigator.push(context, MaterialPageRoute(builder: (context) {
              //     //   return NewRoute();
              //     // }));
              //   },
              // ),
              // FlatButton(
              //   child: Text(
              //     'open SizeBoxRoute',
              //   ),
              //   onPressed: () {
              //     Navigator.pushNamed(context, 'SizeBoxRoute');
              //     // Navigator.push(context, MaterialPageRoute(builder: (context) {
              //     //   return NewRoute();
              //     // }));
              //   },
              // ),
              // RouterToTip(),
              // RandomWords(),
              // FlatButton(
              //   child: Text('open ContextRoute'),
              //   textColor: Colors.blue,
              //   onPressed: () {
              //     Navigator.push(context, MaterialPageRoute(builder: (context) {
              //       return ContextRoute();
              //     }));
              //   },
              // ),
              ,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class NewRoute extends StatefulWidget {
  NewRoute({Key key}) : super(key: key);
  @override
  _NewRouteState createState() => _NewRouteState();
}

class _NewRouteState extends State<NewRoute> {
  FocusNode focusNode1 = new FocusNode();

  FocusNode focusNode2 = new FocusNode();

  @override
  Widget build(BuildContext context) {
    focusNode1.addListener(() {
      print(focusNode1.hasFocus);
    });
    return Scaffold(
      appBar: AppBar(
        title: Text('new route'),
      ),
      body: Theme(
        data: new ThemeData(
            hintColor: Colors.blue[200],
            inputDecorationTheme: InputDecorationTheme(
                hintStyle: TextStyle(color: Colors.yellow))),
        // Theme.of(context).copyWith(
        //     primaryColor: Colors.blue,
        //     hintColor: Colors.blue[200],
        //     inputDecorationTheme: InputDecorationTheme(
        //         hintStyle: TextStyle(color: Colors.yellow))),
        child: Column(
          children: <Widget>[
            TextField(
                focusNode: focusNode1,
                autofocus: false,
                decoration: InputDecoration(
                    hintText: '123',
                    hintStyle: TextStyle(color: Colors.red),
                    border: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(20)))),
                inputFormatters: [LengthLimitingTextInputFormatter(1)]),
            TextField(
                focusNode: focusNode2,
                autofocus: false,
                inputFormatters: [LengthLimitingTextInputFormatter(1)]),
            FlatButton(
              onPressed: () {
                FocusScope.of(context).requestFocus(focusNode2);
              },
              child: Text('focus2'),
            ),
            FlatButton(
              onPressed: () {
                focusNode1.unfocus();
                focusNode2.unfocus();
              },
              child: Text('blur all'),
            )
          ],
        ),
      ),
    );
  }
}

class MyFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue, // unused.
    TextEditingValue newValue,
  ) {
    return TextEditingValue(text: newValue.text);
  }
}

class TipRoute extends StatelessWidget {
  const TipRoute({
    @required this.text,
  }) : super();

  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('tishi'),
      ),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(text),
              RaisedButton(
                onPressed: () => Navigator.pop(context, 'return value'),
                child: Text('return'),
              ),
              FlatButton(
                child: Text('open new Router'),
                textColor: Colors.blue,
                onPressed: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) {
                  //   return NewRoute();
                  // }));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RouterToTip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        RaisedButton(
          child: Text(
            'openTip',
            style: GoogleFonts.getFont('Lato'),
          ),
          onPressed: () async {
            var result = await Navigator.push(context,
                MaterialPageRoute(builder: (context) {
              return TipRoute(text: 'woshitishi');
            }));
            print("luyoufanhuizhi $result");
          },
        ),
        FlatButton(
          // child: Text('open echo_page'),
          child: DefaultTextStyle(
            style: TextStyle(color: Colors.red, fontSize: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text('openTip'),
                Text(
                  'openTip',
                ),
                Text(
                  '789',
                  style: TextStyle(inherit: false, color: Colors.yellow),
                ),
              ],
            ),
          ),
          textColor: Colors.blue,
          onPressed: () {
            Navigator.of(context).pushNamed("echo_page", arguments: {
              'value': '123',
              'name': '123',
            });
          },
        ),
        OutlineButton(
          child: Text('ountlineButton'),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.developer_mode),
          onPressed: () {},
        ),
        RaisedButton.icon(
          icon: Icon(Icons.devices_other),
          label: Text('123'),
          onPressed: () {},
        ),
        FlatButton(
          onPressed: () {},
          child: Text('submit'),
          color: Color(0x000000),
          colorBrightness: Brightness.light,
          splashColor: Colors.grey,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        )
      ],
    ));
  }
}

class EchoRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context).settings.arguments;
    print(args);
    var settings = ModalRoute.of(context).settings;
    print(settings);
    return Scaffold(
      appBar: AppBar(
        title: Text('echotitle'),
      ),
      body: Echo(text: 'lalala'),
    );
  }
}

class RandomWords extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final words = WordPair.random();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(words.toString()),
    );
  }
}

class Echo extends StatelessWidget {
  const Echo({
    Key key,
    @required this.text,
    this.backgroundColor: Colors.grey,
  }) : super(key: key);
  final String text;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: backgroundColor,
        child: Text(text),
      ),
    );
  }
}

class ContextRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Context Title'),
      ),
      body: Container(
        child: Builder(
          builder: (context) {
            Scaffold scaffold = context.ancestorWidgetOfExactType(Scaffold);
            return (scaffold.appBar as AppBar).title;
          },
        ),
      ),
    );
  }
}

class SwitchAndCheckBoxTest extends StatefulWidget {
  @override
  _SwitchAndCheckBoxTestState createState() =>
      new _SwitchAndCheckBoxTestState();
}

class _SwitchAndCheckBoxTestState extends State<SwitchAndCheckBoxTest> {
  bool _switchSelected = false;
  bool _checkboxSelect = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Switch(
          value: _switchSelected,
          onChanged: (value) {
            setState(() {
              _switchSelected = value;
            });
          },
          activeColor: Colors.blue,
          activeTrackColor: Colors.blue,
          inactiveThumbColor: Colors.blue,
          inactiveTrackColor: Colors.blue,
          materialTapTargetSize: MaterialTapTargetSize.padded,
          focusColor: Colors.green,
        ),
        Checkbox(
          onChanged: (value) {
            setState(() {
              _checkboxSelect = value;
            });
          },
          tristate: true,
          activeColor: Colors.blue,
          value: _checkboxSelect,
        )
      ],
    );
  }
}
