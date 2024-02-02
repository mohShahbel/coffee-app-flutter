import 'package:coffee_app_flutter/core/utils/app_colors.dart';
import 'package:coffee_app_flutter/core/utils/app_text_styles.dart';
import 'package:coffee_app_flutter/features/favorite/presentation/views/favorite_view.dart';
import 'package:coffee_app_flutter/features/profile/presentation/views/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../cart/presentation/views/cart_view.dart';
import '../views/home_view.dart';

PersistentTabController _controller = PersistentTabController(initialIndex: 0);

class HomeNavBar extends StatelessWidget {
  const HomeNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      navBarHeight: 70,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      navBarStyle: NavBarStyle.style3,
      backgroundColor: Colors.grey[100]!,
    );
  }
}

List<Widget> _buildScreens() {
  return [
    const HomeView(),
    const FavoriteView(),
    const CartView(),
    const ProfileView(),
  ];
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset(Assets.imagesActiveHomeIcon),
      inactiveIcon: SvgPicture.asset(Assets.imagesHomeIcon),
      activeColorPrimary: AppColors.primaryColor,
      title: "Home",
      textStyle: CustomTextStyles.lato400style12.copyWith(
        fontWeight: FontWeight.w800,
      ),
    ),
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset(Assets.imagesActiveFavoriteIcon),
      inactiveIcon: SvgPicture.asset(Assets.imagesFavoriteIcon),
      activeColorPrimary: AppColors.primaryColor,
      title: "Favorite",
      textStyle: CustomTextStyles.lato400style12.copyWith(
        fontWeight: FontWeight.w800,
      ),
    ),
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset(Assets.imagesActiveCartIcon),
      inactiveIcon: SvgPicture.asset(Assets.imagesCartIcon),

      activeColorPrimary: AppColors.primaryColor,
      title: "Cart",
      textStyle: CustomTextStyles.lato400style12.copyWith(
        fontWeight: FontWeight.w800,
      ),
      // inactiveIcon: SvgPicture.asset(Assets.imagesShoppingCart),
    ),
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset(Assets.imagesActiveProfileIcon),
      inactiveIcon: SvgPicture.asset(Assets.imagesProfileIcon),

      activeColorPrimary: AppColors.primaryColor,
      title: "Profile",
      textStyle: CustomTextStyles.lato400style12.copyWith(
        fontWeight: FontWeight.w800,
      ),
      // inactiveIcon: SvgPicture.asset(Assets.imagesPerson),
    ),
  ];
}
