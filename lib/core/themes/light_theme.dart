import 'package:flutter/material.dart';

import '../assets/app_fonts.dart';
import 'app_colors.dart';

ThemeData getLightThemeData(BuildContext context) {
  final ColorScheme colorScheme = const ColorScheme.light().copyWith(
    primary: AppColors.primary,
    secondary: AppColors.primary.withAlpha(230),
    background: Colors.white,
  );
  return ThemeData(
    colorScheme: colorScheme,
    fontFamily: AppFonts.poppins,
    brightness: Brightness.light,
  );
}
