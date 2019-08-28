import 'package:barista_static/config/SizeConfig.dart';
import 'package:barista_static/config/Styles.dart';
import 'package:barista_static/screens/SpotPage.dart';
import 'package:flutter/material.dart';

class SpotCard extends StatelessWidget {
  final _cardWidth = 50.0;
  final _cardHeight = 25.0;
  final _cardPadding = 0.0;

  //Passed in when creating new Cards
  final String imagePath;
  final String coverText;

  SpotCard({Key key, @required this.imagePath, @required this.coverText})
      : assert(imagePath != null),
        assert(coverText != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => SpotScreen(
                      spotName: coverText,
                      imgPath: imagePath,
                    )));
      },
      child: Container(
        margin: EdgeInsets.only(
            top: SizeConfig.safeBlockVertical,
            bottom: SizeConfig.safeBlockVertical),
        width: SizeConfig.safeBlockHorizontal * _cardWidth,
        height: SizeConfig.safeBlockVertical * _cardHeight,
        padding: EdgeInsets.all(_cardPadding),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
              Radius.circular(SizeConfig.safeBlockHorizontal * _cardWidth / 5)),
          boxShadow: [
            BoxShadow(blurRadius: SizeConfig.safeBlockHorizontal * 1)
          ],
        ),
        child: Stack(
          children: <Widget>[
            Positioned.fill(
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(
                    SizeConfig.safeBlockHorizontal * _cardWidth / 5)),
                child: FittedBox(
                  fit: BoxFit.fitHeight,
                  child: Image.asset(imagePath),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "$coverText",
                style: Styles.spotlabel,
              ),
            )
          ],
        ),
      ),
    );
  }
}
