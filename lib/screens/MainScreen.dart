import 'package:barista_static/components/FeatureHeader.dart';
import 'package:barista_static/components/SpotCard.dart';
import 'package:barista_static/components/Story.dart';
import 'package:barista_static/config/SizeConfig.dart';
import 'package:barista_static/config/Styles.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    Styles().init();
    return Scaffold(
        body: Container(
      color: Colors.transparent,
      height: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          FeatureHeader(),
          Expanded(
            child: ListView(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(
                      top: SizeConfig.safeBlockHorizontal * 3,
                      bottom: SizeConfig.safeBlockHorizontal * 3,
                      left: SizeConfig.safeBlockHorizontal * 4),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Top Spots",
                      style: Styles.label,
                    ),
                  ),
                ),
                Container(
                  height: SizeConfig.safeBlockVertical * 30,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      SizedBox(
                        width: SizeConfig.safeBlockHorizontal * 10,
                      ),
                      SpotCard(
                        imagePath: "assets/images/lockchuck3.jpg",
                        coverText: "LOCKCHUCK",
                      ),
                      SizedBox(
                        width: SizeConfig.safeBlockHorizontal * 10,
                      ),
                      SpotCard(
                        imagePath: "assets/images/luckin1.jpg",
                        coverText: "LUCKIN",
                      ),
                      SizedBox(
                        width: SizeConfig.safeBlockHorizontal * 10,
                      ),
                      SpotCard(
                        imagePath: "assets/images/starbucks1.jpeg",
                        coverText: "STARBUCKS",
                      ),
                      SizedBox(
                        width: SizeConfig.safeBlockHorizontal * 10,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(top: SizeConfig.blockSizeVertical * 3),
                  padding: EdgeInsets.only(
                      top: SizeConfig.safeBlockHorizontal * 3,
                      bottom: SizeConfig.safeBlockHorizontal * 3,
                      left: SizeConfig.safeBlockHorizontal * 4),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Stories",
                      style: Styles.label,
                    ),
                  ),
                ),
                StoryCard(
                  imageUrl: 'assets/story/story1.jpg',
                  textCover: "What Opens Your World?",
                  date: DateTime.now(),
                ),
                SizedBox(
                  height: SizeConfig.safeBlockHorizontal * 8,
                ),
                StoryCard(
                  imageUrl: 'assets/story/story1.jpg',
                  textCover: "What Opens Your World?",
                  date: DateTime.now(),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
