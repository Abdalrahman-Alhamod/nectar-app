import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/app_route.dart';

import 'core/themes/light_theme.dart';

void main() {
  runApp(const NectarApp());
}

class NectarApp extends StatelessWidget {
  const NectarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRoute.router,
      theme: getLightThemeData(context),
      debugShowCheckedModeBanner: false,
     
    );
  }
}
