import 'package:flutter/material.dart';

class GradientBackground extends StatelessWidget {
  final Widget child;
  final List<Color> colors;

  GradientBackground({@required this.child, @required this.colors});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: generateColors(colors)
        ),
      ),
      curve: Curves.linear,
      child: child, duration: Duration(milliseconds: 500),
    );
  }

  List<Color> generateColors(List<Color> colors) {
    if (colors[0] is MaterialColor) {
      final MaterialColor color = colors[0];
      return [
        color[300],
        color[600],
        color[700],
        color[900],
      ];
    } else {
      return colors;
    }
  }
}