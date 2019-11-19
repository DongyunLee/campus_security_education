import 'package:campus_security_education/pack/size_config.dart';
import 'package:flutter/material.dart';

class News extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Column(
      children: <Widget>[
        Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(
                  left: SizeConfig.safeBlockWidth * 5,
                ),
                child: Row(
                  children: <Widget>[
                    Text(
                      '|',
                      style: TextStyle(
                        fontSize: SizeConfig.safeBlockWidth * 4,
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: SizeConfig.safeBlockWidth * 1.5,
                    ),
                    Text(
                      '安全资讯',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: SizeConfig.safeBlockWidth * 4,
                      ),
                    ),
                  ],
                )),
            Spacer(),
            FlatButton(
              onPressed: () {
                print(111);
              },
              child: Text(
                '更多 >',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
        Container(
          height: SizeConfig.safeBlockHeight * 18.0,
          child: Image.asset('res/assets/images/demo.jpg'),
        ),
        SizedBox(
          height: SizeConfig.safeBlockHeight * 3.0,
        ),
      ],
    );
  }
}
