import 'package:flutter/material.dart';

import '../cus_search_bar_widget.dart';

class CustomSearchBarSection extends StatelessWidget {
  const CustomSearchBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomSearchBarWidget(),
        SizedBox(height: 80),
      ],
    );
  }
}