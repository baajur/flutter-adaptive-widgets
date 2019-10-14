import 'dart:io';

import 'package:flutter/widgets.dart';

class AdaptiveWidget extends StatelessWidget {
  final WidgetBuilder materialBuilder;
  final WidgetBuilder cupertinoBuilder;

  const AdaptiveWidget({
    Key key,
    @required this.materialBuilder,
    @required this.cupertinoBuilder,
  })  : assert(materialBuilder != null),
        assert(cupertinoBuilder != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? cupertinoBuilder(context)
        : materialBuilder(context);
  }
}
