import 'package:flutter/material.dart';

class MyThemeController extends InheritedWidget {
  final ThemeMode themeMode;
  final void Function(ThemeMode) setThemeMode;

  const MyThemeController({
    super.key,
    required this.themeMode,
    required this.setThemeMode,
    required super.child,
  });

  static MyThemeController of(BuildContext context) {
    final MyThemeController? result = context.dependOnInheritedWidgetOfExactType<MyThemeController>();
    assert(result != null, 'No MyThemeController found in context');
    return result!;
  }

  static void setTheme(BuildContext context, ThemeMode mode) {
    MyThemeController.of(context).setThemeMode(mode);
  }

  @override
  bool updateShouldNotify(MyThemeController oldWidget) => oldWidget.themeMode != themeMode;
}
