import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar_app/core/assets/app_svgs.dart';
import 'package:nectar_app/core/utils/app_route.dart';
import 'package:nectar_app/core/widgets/custom_elevated_button.dart';

import '../../../../core/assets/app_images.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
            AppImages.onbording,
          ),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            const Spacer(
              flex: 1,
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                  SvgPicture.asset(AppSVGs.logo),
                  const Text(
                    'Welcome to our store',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 48,
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    'Ger your groceries in as fast as one hour',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.white70,
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  CustomeElevatedButton(
                    onPressed: () {
                      GoRouter.of(context).pushReplacement(AppRoute.kHomeView);
                    },
                    title: 'Get Started',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
