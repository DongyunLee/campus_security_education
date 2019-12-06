import 'package:campus_security_education/pack/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MsgRow extends StatefulWidget {
  @override
  _MsgRowState createState() => _MsgRowState();
}

class _MsgRowState extends State<MsgRow> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Ink(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.safeBlockWidth * 3.5,
        ),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: SizeConfig.safeBlockHeight * 1,
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                    width: SizeConfig.safeBlockWidth * 63,
                    child: Text(
                      '消息标题消息标题消息标题消息标题消息标题消息标题消息标题消息标题消息标题消息标题消息标题消息标题',
                      style: TextStyle(
                        fontSize: SizeConfig.safeBlockWidth * 4.3,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Spacer(),
                  Text(
                    '2019-11-20 17:36',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: SizeConfig.safeBlockHeight * 1.8,
            ),
            Container(
              child: Text(
                '消息正文消息正文消文消正文消息正文消息正文消息正文消息正文消息正文消息正文消息正文消息正文消息正文消息正文消息正文消息正文消息正文',
                style: TextStyle(color: Colors.grey),
                textAlign: TextAlign.center,
                maxLines: 2,
              ),
            ),
            SizedBox(
              height: SizeConfig.safeBlockHeight * 1.8,
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
