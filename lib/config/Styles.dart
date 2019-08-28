import 'package:barista_static/config/SizeConfig.dart';
import 'package:flutter/material.dart';

class Styles {
  static TextStyle title;
  static TextStyle parHeader;
  static TextStyle normal;
  static TextStyle label;
  static TextStyle storyLabel;
  static TextStyle featLabel;
  static TextStyle spotlabel;

  void init() {
    title = TextStyle(
        fontSize: SizeConfig.safeBlockHorizontal * 8,
        color: Colors.black87,
        fontWeight: FontWeight.bold,
        letterSpacing: SizeConfig.safeBlockHorizontal * 1.5);

    storyLabel = title.copyWith(
        fontSize: SizeConfig.safeBlockHorizontal * 7,
        color: Colors.white,
        letterSpacing: SizeConfig.safeBlockHorizontal * 0.3);

    label = TextStyle(
        fontSize: SizeConfig.safeBlockHorizontal * 6,
        letterSpacing: SizeConfig.safeBlockHorizontal * 0.5);

    parHeader = TextStyle(
      fontSize: SizeConfig.safeBlockHorizontal * 5,
    );

    spotlabel = TextStyle(
        fontSize: SizeConfig.safeBlockHorizontal * 7,
        color: Colors.white,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.5);

    featLabel = TextStyle(
        fontSize: SizeConfig.safeBlockHorizontal * 6,
        color: Colors.black54,
        letterSpacing: SizeConfig.safeBlockHorizontal * 4,
        fontWeight: FontWeight.w800);

    normal = TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 4);
  }
}
