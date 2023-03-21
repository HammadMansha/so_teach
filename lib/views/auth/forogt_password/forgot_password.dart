
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:so_teach/controllers/auth/forgotpassword/forgotpassword_controller.dart';

import '../../../constants/app_assets/app_assets.dart';
import '../../../constants/app_colors/app_colors.dart';
import '../../../constants/app_strings/app_strings.dart';
import '../../../controllers/auth/signup/signup2_controller.dart';
import '../../../controllers/auth/signup/signup_verification_controller.dart';
import '../../../routes/app_routes.dart';
import '../../../widgets/common_buttons/common_button.dart';
import '../../../widgets/common_textfields/commn_textfield.dart';
import '../../../widgets/common_textstyle/common_text_style.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: bodyData(context),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: GestureDetector(
          onTap: () {
            // _.betterPlayerController.dispose();
            Get.back();
            // Get.off(() => Dashboard());
          },
          child: const Icon(
            Icons.arrow_back_ios_new,
            size: 15,
            color: Colors.black,
          ),
        ),

      ),);
  }
  Widget bodyData(context){
    return GetBuilder<ForgotPasswordController>(init: ForgotPasswordController(),builder: (_) {
      return Container(
        height: Get.height,
        width: Get.width,
        color: Colors.white,
        child:  SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(child: Text("${AppStrings.askAdminToProvide}",style: CommonTextStyle.font22weight500Black,textAlign: TextAlign.center,).marginOnly(top: 80)).marginOnly(top: 150),


              CommonButton(
                width: Get.width,
                text: "Request New Password",
                textStyle: CommonTextStyle.font16weight500White,
                fillColor: AppColors.blackBtnAndTextColor,
                onPressed: (){},
              ).marginOnly(top: 90),


            ],
          ).marginOnly(left: 40,right: 40),
        ),
      );
    }
    );
  }

}
