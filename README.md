# adaptive_widgets

A set of utilities which allow you to dynamically adapt your app to the current platform.

## Installing

Simply add the dependency to your project's `pubspec.yaml` file:

```yaml
adaptive_widgets: ^0.0.4
```

## Usage

### Adaptive Widget

You can use the `AdaptiveWidget` class to allow your app to choose between two different widgets depending on platform:

```dart
AdaptiveWidget(
  cupertinoBuilder: (_) => CupertinoSlider(
    onChanged: _valueChanged,
    value: _value,
  ),
  materialBuilder: (_) => Slider(
    onChanged: _valueChanged,
    value: _value,
  ),
);
```

### Adaptive Route

The `createAdaptiveRoute` method returns either a `MaterialPageRoute` or a `CupertinoPageRoute` depending on the platform:

```dart
createAdaptiveRoute(
  builder: (_) => MyNiceWidget(),
  title: "My Nice Page",
);
```

### Adaptive App

The `AdaptiveApp` class will build either a `MaterialApp` or a `CupertinoApp` depending on the platform.

It supports all the properties available in the Material and Cupertino app classes, except that rather than specifying one theme, you can specify a `cupertinoTheme`, `materialTheme`, and `materialDarkTheme`.

```dart
AdaptiveApp(
  title: 'My Adaptive App',
  home: HomeWidget(),
  cupertinoTheme: CupertinoThemeData(),
  materialTheme: ThemeData.light(),
  materialDarkTheme: ThemeData.dark(),
);
```
