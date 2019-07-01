import 'package:flutter/material.dart';
import 'package:moment/global.dart';

class Gallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      colors: <Color>[Colors.deepOrange],
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Gallery Page View',
            ),
          ],
        ),
      ),
    );
  }
}
