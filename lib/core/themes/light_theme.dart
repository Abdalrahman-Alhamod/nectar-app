import 'package:flutter/material.dart';

import '../assets/app_fonts.dart';
import 'app_colors.dart';

ThemeData getLightThemeData(BuildContext context) {
  final ColorScheme colorScheme = ColorScheme.fromSeed(
    seedColor: AppColors.primary,
  );
  return ThemeData(
    useMaterial3: true,
    primaryColor: AppColors.primary,
    colorScheme: colorScheme,
    fontFamily: AppFonts.poppins,
    brightness: Brightness.light,
  );
}
