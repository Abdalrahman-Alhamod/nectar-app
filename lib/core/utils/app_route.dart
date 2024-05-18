import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar_app/src/Cart/presentation/views/order_placed_view.dart';
import 'package:nectar_app/src/Find_Products/presentation/views/beverages_view.dart';
import 'package:nectar_app/src/Home/presentation/views/home_view.dart';

class AppRoute {
  static const kHomeView = '/home';
  static const kBeveragesView = '/beverages';
  static const kOrderAcceptedView = '/orderAccepted';
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return  const HomeView();
        },
      ),
      GoRoute(
        path: kBeveragesView,
        builder: (BuildContext context, GoRouterState state) {
          return const BeveragesView();
        },
      ),
      GoRoute(
        path: kOrderAcceptedView,
        builder: (BuildContext context, GoRouterState state) {
          return const OrderAcceptedView();
        },
      ),
    ],
  );
}
