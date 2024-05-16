import 'package:flutter/material.dart';
import 'package:nectar_app/src/Home/presentation/views/home_view.dart';

import 'core/themes/light_theme.dart';

void main() {
  runApp(const NectarApp());
}

class NectarApp extends StatelessWidget {
  const NectarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: getLightThemeData(context),
      debugShowCheckedModeBanner: false,
      home: const HomeView(),
    );
  }
}
