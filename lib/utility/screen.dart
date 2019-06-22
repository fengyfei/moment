import 'package:flutter/material.dart';

Size screenSize(BuildContext context) {
  return MediaQuery.of(context).size;
}

double screenHeight(BuildContext context, {double dividedBy = 1, double toolBar = kToolbarHeight}) {
  if (dividedBy <= 0 ) {
    dividedBy = 1;
  }

  return (screenSize(context).height - toolBar) / dividedBy;
}

double screenWidth(BuildContext context, {double dividedBy = 1}) {
  if (dividedBy <= 0 ) {
    dividedBy = 1;
  }

  return screenSize(context).width / dividedBy;
}
