import 'package:adaptive_widgets_example/home/home_viewmodel.dart';
import 'package:flutter/material.dart';

class MaterialHomeWidget extends StatelessWidget {
  final HomeViewModel _viewModel = HomeViewModel();

  MaterialHomeWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_viewModel.title),
      ),
    );
  }
}
