import 'package:campus_security_education/common/bottom_bar.dart';
import 'package:flutter/material.dart';

class Msg extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MsgState();
}

class _MsgState extends State<Msg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBar(
        index: 1,
      ),
    );
  }
}
