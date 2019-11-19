import 'package:campus_security_education/pack/size_config.dart';
import 'package:flutter/material.dart';

class BannerView extends StatefulWidget {
	@override
	State<StatefulWidget> createState() => _BannerViewState();
}

class _BannerViewState extends State<BannerView> {
	@override
	Widget build(BuildContext context) {
		SizeConfig().init(context);
		
		return Container(
			height: SizeConfig.safeBlockHeight * 21.5,
			alignment: Alignment.center,
			child: Image.asset('res/assets/images/demo.jpg'),
		);
	}
}
