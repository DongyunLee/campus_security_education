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
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.mail_outline), onPressed: () {})
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.forum),
        tooltip: '社区',
        //backgroundColor: Colors.cyan,
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            const UserAccountsDrawerHeader(
              accountName: Text('李东云'),
              accountEmail: Text('li_dongyun@outlook.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.pinkAccent,
              ),
              margin: EdgeInsets.zero,
            )
          ],
        ),
      ),
      body: Column(
        children: <Widget>[BannerView(), ButtonGroup()],
      ),
    );
  }
}
