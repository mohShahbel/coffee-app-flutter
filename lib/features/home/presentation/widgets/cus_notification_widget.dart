import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/app_assets.dart';

class CustomNotificationWidget extends StatelessWidget {
  const CustomNotificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(Assets.imagesNotificationIcon);
  }
}