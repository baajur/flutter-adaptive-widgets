import 'dart:core';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Returns an adaptive [PageRoute] according to the current platform.
///
/// Uses [CupertinoPageRoute] on iOS and [MaterialPageRoute] on all other platforms.
///
/// By default, when a modal route is replaced by another, the previous route
/// remains in memory. To free all the resources when this is not necessary, set
/// [maintainState] to false.
///
/// The type `T` specifies the return type of the route which can be supplied as
/// the route is popped from the stack via [Navigator.pop] when an optional
/// `result` can be provided.
///
/// See also:
///
///  * [MaterialPageRoute]
///  * [CupertinoPageRoute]
///  * [PageRoute]
PageRoute<T> createAdaptiveRoute<T>({
  @required WidgetBuilder builder,
  String title,
  RouteSettings settings,
  bool maintainState = true,
  bool fullscreenDialog = false,
}) {
  return Platform.isIOS
      ? CupertinoPageRoute<T>(
          builder: builder,
          title: title,
          settings: settings,
          maintainState: maintainState,
          fullscreenDialog: fullscreenDialog,
        )
      : MaterialPageRoute<T>(
          builder: builder,
          settings: settings,
          maintainState: maintainState,
          fullscreenDialog: fullscreenDialog,
        );
}
