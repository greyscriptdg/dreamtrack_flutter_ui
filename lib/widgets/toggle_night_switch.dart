import 'package:flutter/material.dart';
import '../my_theme_controller.dart';

class ToggleNightSwitch extends StatefulWidget {
  const ToggleNightSwitch({super.key});

  @override
  State<ToggleNightSwitch> createState() => _ToggleNightSwitchState();
}

class _ToggleNightSwitchState extends State<ToggleNightSwitch> {
  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        transitionBuilder: (child, animation) {
          return RotationTransition(
            turns: Tween(begin: 0.75, end: 1.0).animate(animation),
            child: ScaleTransition(scale: animation, child: child),
          );
        },
        child: Icon(
          isDark ? Icons.dark_mode : Icons.light_mode,
          key: ValueKey(isDark),
          size: 28,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
      onPressed: () {
        setState(() => isDark = !isDark);
        final brightness = isDark ? Brightness.dark : Brightness.light;
        final themeMode = brightness == Brightness.dark ? ThemeMode.dark : ThemeMode.light;
        MyThemeController.setTheme(context, themeMode);
      },
    );
  }
}
