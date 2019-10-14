import 'package:adaptive_widgets/adaptive_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AdaptiveApp(
      title: "Adaptive App",
      home: HomeWidget(),
      cupertinoTheme: CupertinoThemeData(),
      materialTheme: ThemeData.light(),
    );
  }
}

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  double _value = 0;
  ValueChanged<double> _valueChanged;

  @override
  void initState() {
    super.initState();
    _valueChanged = (v) {
      setState(() {
        _value = v;
      });
    };
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveWidget(
      cupertinoBuilder: (_) => CupertinoSlider(
        onChanged: _valueChanged,
        value: _value,
      ),
      materialBuilder: (_) => Slider(
        onChanged: _valueChanged,
        value: _value,
      ),
    );
  }
}
