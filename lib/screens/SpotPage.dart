import 'package:flutter/material.dart';

class SpotScreen extends StatelessWidget {
  final String spotName;
  final String imgPath;

  const SpotScreen({Key key, this.spotName, this.imgPath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$spotName'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text("$spotName"),
            Hero(
              tag: "spotImg",
              child: Image.asset(
                imgPath,
                height: 200,
              ),
            )
          ],
        ),
      ),
    );
  }
}
