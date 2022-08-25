import 'package:flutter/material.dart';

ThemeData theme = ThemeData(
  primaryColor: Colors.amber,
);

/// Fluui 亮色主题
final ThemeData fluuiLightTheme = _buildLightTheme();
// Fluui 暗色主题
final ThemeData fluuiDarkTheme = _buildDarkTheme();

ThemeData _buildLightTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith();
}

ThemeData _buildDarkTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith();
}
