import 'package:flutter/material.dart';

class FeatScreen extends StatelessWidget {
  final String title;

  const FeatScreen({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$title'),
      ),
    );
  }
}
