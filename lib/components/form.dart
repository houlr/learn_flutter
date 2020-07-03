import 'package:flutter/material.dart';

class FormTestRoute extends StatefulWidget {
  FormTestRoute({Key key}) : super(key: key);
  @override
  _FormTestRouteState createState() => _FormTestRouteState();
}

class _FormTestRouteState extends State<FormTestRoute> {
  TextEditingController _unameController = new TextEditingController();
  TextEditingController _pwdController = new TextEditingController();
  GlobalKey _formKey = new GlobalKey<FormState>();
  FocusNode pwdFocusNode = new FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('form Test')),
      body: Column(
        children: <Widget>[
          Form(
            key: _formKey,
            autovalidate: true,
            child: Column(
              children: <Widget>[
                TextFormField(
                  controller: _unameController,
                  decoration: InputDecoration(
                      labelText: '用户名',
                      hintText: '用户名/邮箱',
                      icon: Icon(Icons.person)),
                  validator: (v) {
                    return v.trim().length > 0 ? null : '用户名不能为空！';
                  },
                ),
                TextFormField(
                  controller: _pwdController,
                  focusNode: pwdFocusNode,
                  decoration: InputDecoration(
                      labelText: '密码',
                      hintText: '您的登录密码',
                      icon: Icon(Icons.lock)),
                  obscureText: true,
                  validator: (v) {
                    return v.trim().length > 5 ? null : '密码不能少于6位！';
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 28),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: RaisedButton(
                          child: Text('login key'),
                          padding: EdgeInsets.all(15),
                          onPressed: () {
                            pwdFocusNode.unfocus();
                            if ((_formKey.currentState as FormState)
                                .validate()) {
                              print('pass');
                            } else {
                              print('false');
                            }
                          },
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 28),
                  child: Row(
                    children: <Widget>[
                      Expanded(child: Builder(
                        builder: (context) {
                          return RaisedButton(
                            child: Text('login context'),
                            padding: EdgeInsets.all(15),
                            onPressed: () {
                              pwdFocusNode.unfocus();
                              if (Form.of(context).validate()) {
                                print('pass');
                              } else {
                                print('false');
                              }
                            },
                          );
                        },
                      ))
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
