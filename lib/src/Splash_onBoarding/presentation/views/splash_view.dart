import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar_app/core/assets/app_images.dart';
import 'package:nectar_app/core/assets/app_svgs.dart';
import 'package:nectar_app/core/themes/app_colors.dart';
import 'package:nectar_app/core/utils/app_route.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void didChangeDependencies() async {
    await precacheImage(const AssetImage(AppImages.onbording), context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: FadeInUp(
          duration: const Duration(seconds: 2),
          delay: const Duration(milliseconds: 300),
          onFinish: (direction) {
            GoRouter.of(context).pushReplacement(AppRoute.kOnBoardingView);
          },
          child: SvgPicture.asset(AppSVGs.splash),
        ),
      ),
    );
  }
}
