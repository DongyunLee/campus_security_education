library icon_text_button;

import 'package:campus_security_education/pack/size_config.dart';
import 'package:flutter/material.dart';

///
/// The enum values Of the button's type
/// 按钮类型的枚举值
///
enum BtnType { raise, outline, flat, icon }

///
/// The Button with icon & text together
/// 图文按钮
///
class IconTextButton extends StatefulWidget {
  ///
  /// The button style that you will use
  /// 你要使用的按钮组件样式
  ///
  final BtnType btnType;

  ///
  /// The icon you want to display
  /// icon图标
  ///
  final Icon icon;

  ///
  /// The text you will display under the icon
  /// 图标下的文字
  ///
  final Text label;

  ///
  /// The size of whole button
  /// 大小
  ///
  final double size;

  ///
  /// The color of icon & text
  /// 颜色
  ///
  final Color color;

  ///
  /// The color of Background
  /// 背景颜色
  ///
  final Color bgColor;

  ///
  /// The event when you click our button
  /// 点击事件
  ///
  final VoidCallback onPress;

  final Color borderColor;

  ///
  /// If you want the Ink Splash
  /// 是否需要墨水溅射效果
  ///
  final bool splash;

  const IconTextButton(
      {Key key,
        @required this.icon,
        @required this.label,
      this.size,
      this.color,
      this.bgColor,
      this.btnType,
        @required this.onPress,
        this.borderColor,
        this.splash})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _IconTextButtonState();
}

///
/// The State of IconTextButton
/// 状态类
///
class _IconTextButtonState extends State<IconTextButton> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
  
    var splash = widget.splash ?? false;
  
    double size = widget.size ?? 3.5;
  
    ///
    /// The detail of our button
    /// 按钮的内部实现
    ///
    var wid = Padding(
      padding: new EdgeInsets.fromLTRB(
        SizeConfig.safeBlockWidth * 0.8,
        SizeConfig.safeBlockHeight * 1.8,
        SizeConfig.safeBlockWidth * 0.8,
        SizeConfig.safeBlockHeight * 1.8,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Icon(
            widget.icon.icon,
            size: SizeConfig.safeBlockWidth * size * 1.5,
          ),
          SizedBox(
            height: SizeConfig.safeBlockHeight * 0.8,
          ),
          Text(
            widget.label.data,
            style: TextStyle(
              fontSize: SizeConfig.safeBlockWidth * size,
            ),
          ),
        ],
      ),
    );
  
    ///
    /// The switcher of button type
    /// 按钮类型处理
    ///
    switch (widget.btnType) {
      case BtnType.outline:
        return Ink(
          decoration: ShapeDecoration(
            color: widget.bgColor,
            shape: Border(),
          ),
          child: OutlineButton(
            child: wid,
            splashColor: splash ? widget.color : null,
            textColor: widget.color,
            borderSide: widget.borderColor != null
                ? BorderSide(color: widget.borderColor)
                : null,
            onPressed: widget.onPress,
          ),
        );
      case BtnType.flat:
        return FlatButton(
          child: wid,
          textColor: widget.color,
          splashColor: splash ? widget.color : null,
          color: widget.bgColor,
          onPressed: widget.onPress,
        );
      case BtnType.icon:
        return Container(
          child: Ink(
            decoration: ShapeDecoration(
              color: widget.bgColor,
              shape: Border(),
            ),
            child: IconButton(
              icon: widget.icon,
              color: widget.color,
              splashColor: splash ? widget.color : null,
              tooltip: widget.label.data,
              onPressed: widget.onPress,
            ),
          ),
        );
      default:
        return RaisedButton(
          child: wid,
          textColor: widget.color,
          splashColor: splash ? widget.color : null,
          color: widget.bgColor,
          onPressed: widget.onPress,
        );
    }
  }
}
