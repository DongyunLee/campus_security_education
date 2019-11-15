import 'package:flutter/material.dart';

class TitleBar extends StatelessWidget {
  final bool isRootRoute;

  final String title;

  const TitleBar({Key key, this.isRootRoute, @required this.title})
      : super(key: key);

  Widget build(BuildContext context) {
    return AppBar(
      actions: <Widget>[
        isRootRoute
            ? null
            : IconButton(
                icon: Icon(Icons.chevron_left),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
      ],
      centerTitle: true,
      title: Text(title),
    );
  }
}
