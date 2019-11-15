import 'package:campus_security_education/pack/icon_n_text_button.dart';
import 'package:flutter/material.dart';

class ButtonGroup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 20.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            IconTextButton(
              icon: Icon(Icons.school),
              label: Text('安全课程'),
              color: Colors.deepPurple,
              btnType: BtnType.flat,
              onPress: () {},
            ),
            IconTextButton(
              icon: Icon(Icons.spellcheck),
              label: Text('我要考试'),
              color: Colors.purple,
              btnType: BtnType.flat,
              onPress: () {},
            ),
            IconTextButton(
              icon: Icon(Icons.spellcheck),
              label: Text('我要考试'),
              color: Colors.teal,
              btnType: BtnType.flat,
              onPress: () {},
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            IconTextButton(
              icon: Icon(Icons.camera_alt),
              label: Text('隐患随拍'),
              color: Colors.pink,
              btnType: BtnType.flat,
              onPress: () {},
            ), IconTextButton(
              icon: Icon(Icons.account_balance_wallet),
              label: Text('寻物招领'),
              color: Colors.green,
              btnType: BtnType.flat,
              onPress: () {},
            ),
            Container(
              alignment: Alignment.center,
              width: 110.0,
            )
          ],
        )
      ],
    );
  }
}
