import 'package:flutter/material.dart';

import '../../../../core/functions/navigation.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    delayedNavigate(context, "/onBoarding");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Splash...")),
    );
  }

  void delayedNavigate(context, String path) {
    Future.delayed(
      const Duration(seconds: 2),
      () => customReplacementNavigation(context, path),
    );
  }
}
