import 'package:barista_static/config/SizeConfig.dart';
import 'package:barista_static/config/Styles.dart';
import 'package:barista_static/screens/FeatScreen.dart';
import 'package:flutter/material.dart';

class FeatureHeader extends StatelessWidget {
  final _cornerRoundness = 5.0;
  final _verticalHeight = 30;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => FeatScreen(
                      title: "LOCK CHUCK",
                    )));
      },
      child: Container(
        width: double.infinity,
        height: SizeConfig.safeBlockVertical * _verticalHeight,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(
                  SizeConfig.safeBlockHorizontal * _cornerRoundness),
              bottomLeft: Radius.circular(
                  SizeConfig.safeBlockHorizontal * _cornerRoundness),
            ),
            color: Colors.transparent,
            boxShadow: [BoxShadow(blurRadius: SizeConfig.safeBlockVertical)]),
        child: Stack(
          children: <Widget>[
            Positioned.fill(
                child: ClipRRect(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(
                    SizeConfig.safeBlockHorizontal * _cornerRoundness),
                bottomLeft: Radius.circular(
                    SizeConfig.safeBlockHorizontal * _cornerRoundness),
              ),
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: Image.asset("assets/images/lockchuck1.jpg"),
              ),
            )),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(
                    left: SizeConfig.safeBlockHorizontal * 5.0,
                    top: SizeConfig.safeBlockVertical * 5),
                child: Text(
                  'Featured',
                  style: Styles.title,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(
                  left: SizeConfig.safeBlockHorizontal * 5.0,
                  bottom: SizeConfig.safeBlockHorizontal * 3.0,
                ),
                child: Text(
                  'LOCK CHUCK',
                  style: Styles.featLabel,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
