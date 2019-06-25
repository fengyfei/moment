import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:moment/global.dart';
import 'package:moment/pages/home/index.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(builder: (_) => Counter()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: applicationTheme,
        initialRoute: '/',
        routes: {
          '/': (context) => Home(),
        },
      ),
    );
  }
}
