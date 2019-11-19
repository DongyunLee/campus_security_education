import 'package:flutter/material.dart';

class Community extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('社区'),
        centerTitle: true,
      ),
    );
  }
}
