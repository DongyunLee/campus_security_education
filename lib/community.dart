import 'package:campus_security_education/common/bottom_bar.dart';
import 'package:flutter/material.dart';

class Community extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBar(
        index: 2,
      ),
    );
  }
}
