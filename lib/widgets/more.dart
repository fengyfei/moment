import 'package:flutter/material.dart';

class More extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  More({@required this.text, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            style: Theme.of(context).textTheme.title,
          ),
        ),
        FlatButton(
          child: Text('See all'),
          onPressed: onTap,
        )
      ],
    );
  }
}
