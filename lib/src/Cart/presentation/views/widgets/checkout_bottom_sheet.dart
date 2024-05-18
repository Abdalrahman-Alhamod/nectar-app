import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar_app/core/assets/app_svgs.dart';
import 'package:nectar_app/core/utils/app_route.dart';
import 'package:nectar_app/core/widgets/custom_elevated_button.dart';

import 'row_with_text.dart';

class CheckoutBottomSheet extends StatelessWidget {
  const CheckoutBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              const Text(
                'Checkout',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 24,
                  color: Colors.black,
                ),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.close),
              ),
            ],
          ),
          const Divider(),
          RowWithText(
            text1: 'Delivery',
            text2: 'Select Method',
            onTap: () {},
          ),
          const Divider(),
          RowWithText(
            text1: 'Payment',
            child: SvgPicture.asset(AppSVGs.flag),
            onTap: () {},
          ),
          const Divider(),
          RowWithText(
            text1: 'Promo Code',
            text2: 'Pick discount',
            onTap: () {},
          ),
          const Divider(),
          RowWithText(
            text1: 'Total Cost',
            text2: '\$13.97',
            onTap: () {},
          ),
          const Divider(),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'By placing an order you agree to our ',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                  TextSpan(
                    text: 'Terms',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(
                    text: ' And ',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                  TextSpan(
                    text: 'Conditions',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 32),
          CustomeElevatedButton(
            onPressed: () {
              context.pop();
              GoRouter.of(context).push(AppRoute.kOrderAcceptedView);
            },
            title: 'Place Order',
          ),
        ],
      ),
    );
  }
}
