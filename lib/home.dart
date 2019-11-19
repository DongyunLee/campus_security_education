import 'package:campus_security_education/home/banner.dart';
import 'package:campus_security_education/home/button_group.dart';
import 'package:campus_security_education/home/news.dart';
import 'package:campus_security_education/pack/size_config.dart';
import 'package:flutter/cupertino.dart';
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
    SizeConfig().init(context);
  
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            widget.title,
            style: TextStyle(
                fontSize: SizeConfig.safeBlockWidth * 4.5
            ),
          )),
      body: Column(
        children: <Widget>[
          Card(
            child: Column(
              children: <Widget>[
                BannerView(),
                SizedBox(
                  height: SizeConfig.safeBlockHeight * 1.0,
                ),
                ButtonGroup(),
              ],
            ),
          ),
          Card(
            child: News(),
          ),
        ],
      ),
    );
  }
}
