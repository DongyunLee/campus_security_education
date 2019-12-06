import 'package:campus_security_education/msg/msg_row.dart';
import 'package:campus_security_education/pack/size_config.dart';
import 'package:flutter/material.dart';

class Msg extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MsgState();
}

class _MsgState extends State<Msg> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    
    return Scaffold(
      appBar: AppBar(
        title: Text('消息'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.white,
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: SizeConfig.safeBlockHeight * 1,
          ),
          MsgRow(),
          MsgRow(),
          MsgRow(),
        ],
      ),
    );
  }
}
