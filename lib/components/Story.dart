import 'package:barista_static/config/SizeConfig.dart';
import 'package:barista_static/config/Styles.dart';
import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  final _cardWidth = 80.0;
  final _cardHeight = 35.0;
  final _cardPadding = 0.0;

  final String imageUrl;
  final String textCover;
  final DateTime date;

  const StoryCard({Key key, @required this.imageUrl, this.textCover, this.date})
      : assert(imageUrl != null),
        assert(date != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    int day = date.day;
    String month = _getMonth(date.month);
    return Container(
      padding: EdgeInsets.all(_cardPadding),
      width: SizeConfig.safeBlockHorizontal * _cardWidth,
      height: SizeConfig.safeBlockVertical * _cardHeight,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(
              SizeConfig.safeBlockHorizontal * _cardHeight / 6)),
          boxShadow: [
            BoxShadow(blurRadius: SizeConfig.safeBlockHorizontal * 0.5)
          ]),
      child: Stack(
        children: <Widget>[
          Positioned.fill(
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(
                  SizeConfig.safeBlockHorizontal * _cardHeight / 6)),
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: Image.asset(imageUrl),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: EdgeInsets.only(
                  left: SizeConfig.safeBlockHorizontal * _cardWidth / 15,
                  bottom: SizeConfig.safeBlockHorizontal * _cardHeight / 10),
              child: Text("$textCover", style: Styles.storyLabel),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              margin: EdgeInsets.only(
                  right: SizeConfig.safeBlockHorizontal * _cardWidth / 15,
                  top: SizeConfig.safeBlockVertical * _cardHeight / 10),
              child: Icon(
                Icons.bookmark_border,
                size: SizeConfig.blockSizeHorizontal * _cardHeight / 3.5,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: EdgeInsets.only(
                  top: SizeConfig.safeBlockVertical * _cardHeight / 15,
                  left: SizeConfig.safeBlockHorizontal * _cardWidth / 20),
              height: SizeConfig.safeBlockVertical * (_cardHeight / 3),
              width: SizeConfig.safeBlockHorizontal * (_cardWidth / 5),
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.all(Radius.circular(
                      SizeConfig.safeBlockHorizontal * _cardWidth / 25))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    '$day',
                    style: Styles.label,
                  ),
                  Divider(
                    color: Colors.black87,
                  ),
                  Text(
                    month,
                    style: Styles.label,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  String _getMonth(int month) {
    switch (month) {
      case 1:
        return 'JAN';
      case 2:
        return 'FEB';
      case 3:
        return 'MAR';
      case 4:
        return 'APR';
      case 5:
        return 'MAY';
      case 6:
        return 'JUN';
      case 7:
        return 'JUL';
      case 8:
        return 'AUG';
      case 9:
        return 'SEP';
      case 10:
        return 'OCT';
      case 11:
        return 'NOV';
      case 12:
        return 'DEC';
    }
  }
}
