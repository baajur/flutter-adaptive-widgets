import 'package:adaptive_widgets_example/home/home_viewmodel.dart';
import 'package:flutter/cupertino.dart';

class CupertinoHomeWidget extends StatelessWidget {
  final _viewModel = HomeViewModel();

  CupertinoHomeWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(_viewModel.title),
      ),
      child: Container(),
    );
  }
}
