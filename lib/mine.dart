import 'package:campus_security_education/common/bottom_bar.dart';
import 'package:flutter/material.dart';

class Mine extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MineState();
}

class _MineState extends State<Mine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBar(
        index: 3,
      ),
    );
  }
}
