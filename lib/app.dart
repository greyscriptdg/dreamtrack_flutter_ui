import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'themes/light_theme.dart';
import 'themes/dark_theme.dart';
import 'my_theme_controller.dart';

class DreamTrackApp extends StatefulWidget {
  const DreamTrackApp({super.key});

  @override
  State<DreamTrackApp> createState() => _DreamTrackAppState();
}

class _DreamTrackAppState extends State<DreamTrackApp> {
  ThemeMode _themeMode = ThemeMode.system;

  void _setThemeMode(ThemeMode mode) {
    setState(() {
      _themeMode = mode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MyThemeController(
      themeMode: _themeMode,
      setThemeMode: _setThemeMode,
      child: MaterialApp(
        title: 'DreamTrack',
        debugShowCheckedModeBanner: false,
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: _themeMode,
        home: const HomeScreen(),
      ),
    );
  }
}
