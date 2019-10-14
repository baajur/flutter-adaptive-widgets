import 'package:adaptive_widgets/adaptive_widgets.dart';
import 'package:adaptive_widgets_example/home/home_widget.cupertino.dart';
import 'package:adaptive_widgets_example/home/home_widget.material.dart';
import 'package:flutter/widgets.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AdaptiveWidget(
      cupertinoBuilder: (_) => CupertinoHomeWidget(),
      materialBuilder: (_) => MaterialHomeWidget(),
    );
  }
}
