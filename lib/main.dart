import 'package:flutter/material.dart';

import 'core/themes/light_theme.dart';
import 'src/Find_Products/presentation/views/find_products_view.dart';

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
      home: const FindProductsView(),
    );
  }
}
