import 'package:coffee_app_flutter/features/home/presentation/widgets/home_nav_bar_widget.dart';
import 'package:coffee_app_flutter/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:coffee_app_flutter/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: "/onBoarding",
      builder: (context, state) => const OnBoardingView(),
    ),
    GoRoute(
      path: "/homeNavBar",
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          transitionDuration: const Duration(milliseconds: 300),
          child: const HomeNavBar(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: CurveTween(curve: Curves.ease).animate(animation),
              child: child,
            );
          },
        );
      },
    ),
  ],
);
