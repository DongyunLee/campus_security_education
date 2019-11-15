import 'package:campus_security_education/community.dart';
import 'package:campus_security_education/home.dart';
import 'package:campus_security_education/mine.dart';
import 'package:campus_security_education/msg.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '校园安全',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(title: '校园安全教育'),
      routes: {
        '/home': (BuildContext context) =>
            HomePage(
              title: '首页',
            ),
        '/msg': (BuildContext context) => Msg(),
        '/community': (BuildContext context) => Community(),
        '/mine': (BuildContext context) => Mine()
      },
    );
  }
}
