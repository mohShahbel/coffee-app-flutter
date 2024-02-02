import 'package:coffee_app_flutter/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        clipBehavior: Clip.none,
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(child: CustomHomeAppBar()),
        ],
      ),
    );
  }
}

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16),
        Row(
          children: [
            SizedBox(
              height: 60,
              width: 60,
              child: Image.asset(Assets.imagesProfile),
            ),
          ],
        )
      ],
    );
  }
}
