import 'package:campus_security_education/common/icon_n_text_button.dart';
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
              color: Colors.deepPurpleAccent,
              btnType: BtnType.flat,
              icon: Icon(Icons.school),
              label: Text('安全课程'),
              onPress: () {},
            ),
            IconTextButton(
              color: Colors.purple,
              btnType: BtnType.flat,
              icon: Icon(Icons.spellcheck),
              label: Text('我要考试'),
              onPress: () {},
            ),
            IconTextButton(
              color: Colors.teal,
              btnType: BtnType.flat,
              icon: Icon(Icons.book),
              label: Text('安全百科'),
              onPress: () {},
            )
          ],
        )
      ],
    );
  }
}