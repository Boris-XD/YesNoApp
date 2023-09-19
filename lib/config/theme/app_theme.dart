import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF00BFA6);

const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.red,
  Colors.purple,
  Colors.orange,
  Colors.green,
  Colors.yellow,
  Colors.pink,
  Colors.teal
];

class AppTheme {

  final int themeIndex;
  final bool isDark;

  AppTheme({this.themeIndex = 0, this.isDark = false})
    :assert(themeIndex >= 0 && themeIndex < _colorThemes.length,
            'themeIndex must be between 0 and ${_colorThemes.length - 1}');

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[themeIndex],
      brightness: isDark ? Brightness.dark : Brightness.light
    );
  }
}