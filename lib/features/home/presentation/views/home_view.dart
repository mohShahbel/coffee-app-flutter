import 'package:coffee_app_flutter/features/home/presentation/widgets/sections/cus_home_header_section.dart';
import 'package:flutter/material.dart';

import '../widgets/sections/cus_search_bar_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 36),
        child: CustomScrollView(
          clipBehavior: Clip.none,
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: CustomHomeHeaderSection()),
            SliverToBoxAdapter(child: CustomSearchBarSection())
          ],
        ),
      ),
    );
  }
}

