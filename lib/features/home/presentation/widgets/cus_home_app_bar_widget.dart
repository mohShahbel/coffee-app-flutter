import 'package:coffee_app_flutter/features/home/presentation/widgets/cus_current_location_widget.dart';
import 'package:coffee_app_flutter/features/home/presentation/widgets/cus_notification_widget.dart';
import 'package:coffee_app_flutter/features/home/presentation/widgets/cus_profile_image.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_assets.dart';

class CustomHomeAppBarWidget extends StatelessWidget {
  const CustomHomeAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CustomProfileImage(imgUrl: Assets.imagesProfile),
        Spacer(),
        CustomCurrentLocationWidget(),
        Spacer(flex: 2),
        CustomNotificationWidget()
      ],
    );
  }
}