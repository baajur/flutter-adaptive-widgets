import 'package:adaptive_widgets/adaptive_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home/home_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AdaptiveApp(
      title: "Adaptive App",
      home: HomeWidget(),
      cupertinoTheme: CupertinoThemeData(
        primaryColor: Colors.red,
        primaryContrastingColor: Colors.blue,
      ),
      materialTheme: ThemeData.light(),
    );
  }
}
