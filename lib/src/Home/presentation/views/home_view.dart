import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:nectar_app/src/Find_Products/presentation/views/find_products_view.dart';

import '../../../../core/assets/app_svgs.dart';
import 'bottom_nav_bar/bottom_nav_bar.dart';
import 'bottom_nav_bar/data/bottom_nav_bar_item.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late PageController _controller;
  @override
  void initState() {
    _controller = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _controller,
        dragStartBehavior: DragStartBehavior.down,
        children: const [
          Center(child: Text('Shop')),
          FindProductsView(),
          Center(child: Text('Cart')),
          Center(child: Text('Favorite')),
          Center(child: Text('Profile')),
        ],
      ),
      bottomNavigationBar: BottomNavBar(items: [
        BottomNavBarItem(
          svgPicturePath: AppSVGs.shop,
          label: 'Shop',
        ),
        BottomNavBarItem(
          svgPicturePath: AppSVGs.explore,
          label: 'Explore',
        ),
        BottomNavBarItem(
          svgPicturePath: AppSVGs.cart,
          label: 'Cart',
        ),
        BottomNavBarItem(
          svgPicturePath: AppSVGs.favorite,
          label: 'Favorite',
        ),
        BottomNavBarItem(
          svgPicturePath: AppSVGs.profile,
          label: 'Profile',
        ),
      ], pageController: _controller),
    );
  }
}
