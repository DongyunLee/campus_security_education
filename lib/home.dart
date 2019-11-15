import 'package:campus_security_education/common/bottom_bar.dart';
import 'package:campus_security_education/home/banner.dart';
import 'package:campus_security_education/home/button_group.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  
  final String title;
  
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(widget.title)
      ),
      bottomNavigationBar: BottomBar(
        index: 0,
      ),
      body: Column(
        children: <Widget>[BannerView(), ButtonGroup()],
      ),
    );
  }
}
