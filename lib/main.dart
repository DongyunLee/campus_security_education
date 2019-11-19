import 'package:campus_security_education/community.dart';
import 'package:campus_security_education/home.dart';
import 'package:campus_security_education/mine.dart';
import 'package:campus_security_education/msg.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _index = 0;
  var _body;
  
  void initData() {
    _body = IndexedStack(
      children: <Widget>[
        HomePage(title: 'HUI安全 - 校园安全教育平台'),
        Msg(),
        Community(),
        Mine(),
      ],
      index: _index,
    );
  }
  
  @override
  Widget build(BuildContext context) {
    initData();
    
    return MaterialApp(
      title: '校园安全',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.blueAccent,
      ),
      home: Scaffold(
          body: _body,
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            iconSize: 24.0,
            onTap: (index) =>
                setState(() {
                  this._index = index;
                }),
            currentIndex: this._index,
            fixedColor: Theme
                .of(context)
                .accentColor,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('主页'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.markunread),
                title: Text('消息'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.forum),
                title: Text('社区'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                title: Text('我的'),
              )
            ],
          )
      ),
    );
  }
}
