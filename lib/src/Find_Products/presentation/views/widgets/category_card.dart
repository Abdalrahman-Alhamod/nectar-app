import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.backgroundColor,
    required this.borderColor,
    required this.title,
    required this.image,
    required this.onPressed,
  });
  final Color backgroundColor;
  final Color borderColor;
  final String title;
  final String image;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(175, 190),
        backgroundColor: backgroundColor,
        side: BorderSide(color: borderColor),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
        foregroundColor: backgroundColor,
        surfaceTintColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(
              flex: 1,
            ),
            Image.asset(
              image,
              width: 100,
            ),
            const Spacer(
              flex: 2,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Theme.of(context).colorScheme.inverseSurface,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
