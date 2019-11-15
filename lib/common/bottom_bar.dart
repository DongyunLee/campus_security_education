import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  final int index;

  const BottomBar({Key key, this.index}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currentIndex = 0;

  static const Map _index2Route = {
    0: '/home',
    1: '/msg',
    2: '/community',
    3: '/mine'
  };

  void _onItemTapped(int index) {
    if (mounted) {
      Navigator.of(context).pushNamed(_index2Route[index]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      iconSize: 24.0,
      onTap: _onItemTapped,
      currentIndex: widget.index ?? _currentIndex,
      fixedColor: Theme.of(context).accentColor,
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
    );
  }
}
