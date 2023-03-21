import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/app_assets/app_assets.dart';
import '../../constants/app_colors/app_colors.dart';
import '../../constants/app_strings/app_strings.dart';
import '../../controllers/auth/signup_or_login_controller.dart';
import '../../routes/app_routes.dart';
import '../../widgets/common_buttons/common_button.dart';
import '../../widgets/common_textstyle/common_text_style.dart';

class SignupOrLogin extends StatelessWidget {
  const SignupOrLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyData(context),
    );
  }

  Widget bodyData(context) {
    return GetBuilder<SignupOrLoginController>(
        init: SignupOrLoginController(),
        builder: (_) {
          return Container(
            height: Get.height,
            width: Get.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 200,width:200,child: Image.asset(AppAssets.logo).marginOnly(top: 100)),
                Text("${AppStrings.signUpForFree}",style: CommonTextStyle.font32weight500Black,).marginOnly(top: 100),
                Container(
                  height: Get.height/3.9,
                  width: Get.width,
                  child: Text("${AppStrings.signUpForFreeContent}",
                    style: CommonTextStyle.font12weight400Grey,
                    textAlign: TextAlign.center,
                  ).marginOnly(top: 24),
                ).marginOnly(left: 50,right: 25),
                  CommonButton(
                    text: "Sign up",
                    textStyle: CommonTextStyle.font16weight500White,
                    fillColor: AppColors.blackBtnAndTextColor,
                    onPressed: (){},
                  ),
                CommonButton(
                  text: "Log In",
                  textStyle: CommonTextStyle.font16weight500White,
                  fillColor: AppColors.blackBtnAndTextColor,
                  onPressed: (){},
                ).marginOnly(top: 15),

              ],
            ),
          );
        });
  }
}
