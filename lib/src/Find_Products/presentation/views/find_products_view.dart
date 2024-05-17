import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar_app/core/utils/app_route.dart';
import 'package:nectar_app/src/Find_Products/domain/entities/category_entity.dart';

import '../../../../core/assets/app_images.dart';
import '../../../../core/themes/app_colors.dart';
import 'widgets/category_card.dart';

class FindProductsView extends StatelessWidget {
  const FindProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: Text(
                  'Find Products',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Expanded(
                child: GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                  ),
                  children: [
                    CategoryCard(
                      backgroundColor: AppColors.lightGreen,
                      borderColor: AppColors.lightGreenBorder,
                      category: CategoryEntity(
                        title: 'Fresh Fruits & Vegetable',
                        image: AppImages.freshFruits,
                      ),
                      onPressed: () {},
                    ),
                    CategoryCard(
                      backgroundColor: AppColors.lightOrange,
                      borderColor: AppColors.lightOrangeBorder,
                      category: CategoryEntity(
                        title: 'Cooking Oil & Ghee',
                        image: AppImages.cooking,
                      ),
                      onPressed: () {},
                    ),
                    CategoryCard(
                      backgroundColor: AppColors.lightRed,
                      borderColor: AppColors.lightRedBorder,
                      category: CategoryEntity(
                        title: 'Meat & Fish',
                        image: AppImages.meetFish,
                      ),
                      onPressed: () {},
                    ),
                    CategoryCard(
                      backgroundColor: AppColors.lightPurple,
                      borderColor: AppColors.lightPurpleBorder,
                      category: CategoryEntity(
                        title: 'Bakery & Snacks',
                        image: AppImages.bakerySnacks,
                      ),
                      onPressed: () {},
                    ),
                    CategoryCard(
                      backgroundColor: AppColors.lightYellow,
                      borderColor: AppColors.lightYellowBorder,
                      category: CategoryEntity(
                        title: 'Dairy & Eggs',
                        image: AppImages.dairyEggs,
                      ),
                      onPressed: () {},
                    ),
                    CategoryCard(
                      backgroundColor: AppColors.lightGreen2,
                      borderColor: AppColors.lightGreen2Border,
                      category: CategoryEntity(
                        title: 'Beverages',
                        image: AppImages.beverages,
                      ),
                      onPressed: () {
                        GoRouter.of(context).push(AppRoute.kBeveragesView);
                      },
                    ),
                    CategoryCard(
                      backgroundColor: AppColors.lightPurple2,
                      borderColor: AppColors.lightPurple2Border,
                      category: CategoryEntity(
                        title: 'Frash Fruits & Vegetable',
                        image: AppImages.freshFruits,
                      ),
                      onPressed: () {},
                    ),
                    CategoryCard(
                      backgroundColor: AppColors.lightRed2,
                      borderColor: AppColors.lightRed2Border,
                      category: CategoryEntity(
                        title: 'Frash Fruits & Vegetable',
                        image: AppImages.freshFruits,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      // BottomNavigationBar(
      //   showSelectedLabels: true,
      //   showUnselectedLabels: true,
      //   unselectedItemColor: Colors.black,
      //   selectedItemColor: AppColors.primary,
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: SvgPicture.asset(
      //         AppSVGs.explore,
      //         color:
      //             Theme.of(context).bottomNavigationBarTheme.selectedItemColor,
      //       ),
      //       label: 'Explore',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: SvgPicture.asset(
      //         AppSVGs.shop,
      //         color: Colors.black,
      //       ),
      //       label: 'Shop',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: SvgPicture.asset(AppSVGs.cart),
      //       label: 'Cart',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: SvgPicture.asset(AppSVGs.favorite),
      //       label: 'Favorite',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: SvgPicture.asset(AppSVGs.profile),
      //       label: 'Profile',
      //     ),
      //   ],
      // ),
    );
  }
}
