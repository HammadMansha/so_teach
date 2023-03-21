import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intro_screen_onboarding_flutter/circle_progress_bar.dart';
import 'package:intro_screen_onboarding_flutter/intro_app.dart';
import 'package:intro_screen_onboarding_flutter/introduction.dart';
import 'package:intro_screen_onboarding_flutter/introscreenonboarding.dart';

import '../../constants/app_assets/app_assets.dart';
import '../../constants/app_strings/app_strings.dart';
import '../../routes/app_routes.dart';
import '../../widgets/common_textstyle/common_text_style.dart';

class SplashScreen extends StatelessWidget {
  final List<Introduction> list = [
    Introduction(
      title: '',
      subTitle: '',
      imageUrl: AppAssets.splash,
    ),
    Introduction(
      title: '',
      subTitle: '',
      imageUrl: AppAssets.splash2,
    ),
  ];
  SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyData(context),
    );
  }

  Widget bodyData(context) {
    Future. delayed(const Duration(seconds: 4), ()
    {
      Get.toNamed(Routes.signupOrLogin);
    }
    );
    return SizedBox(
      height: Get.height,
      width: Get.width,
      child: Column(
        children: [
          Text(AppStrings.salamOAlikum,style: CommonTextStyle.font36weight600Black,).marginOnly(top: Get.height/3.5,bottom: 80),
          Image.asset(AppAssets.logo),
          Image.asset(AppAssets.loading).marginOnly(top: 90),

        ],
      ),
    );

  }
}
