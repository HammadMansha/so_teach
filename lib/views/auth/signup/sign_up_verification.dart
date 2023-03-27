
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/app_assets/app_assets.dart';
import '../../../constants/app_colors/app_colors.dart';
import '../../../constants/app_strings/app_strings.dart';
import '../../../controllers/auth/signup/signup2_controller.dart';
import '../../../controllers/auth/signup/signup_verification_controller.dart';
import '../../../routes/app_routes.dart';
import '../../../widgets/common_buttons/common_button.dart';
import '../../../widgets/common_textfields/commn_textfield.dart';
import '../../../widgets/common_textstyle/common_text_style.dart';

class SignUpVerificationScreen extends StatelessWidget {
  const SignUpVerificationScreen({Key? key}) : super(key: key);

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
    return GetBuilder<SignUpVerificationController>(init: SignUpVerificationController(),builder: (_) {
      Future. delayed(const Duration(seconds: 4), ()
      {
        Get.toNamed(Routes.quizScreen);
      }
      );
      return Container(
        height: Get.height,
        width: Get.width,
        color: Colors.white,
        child:  SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 120,width:150,child: Image.asset(AppAssets.logo)),
              Text("${AppStrings.verificationPending}",style: CommonTextStyle.font22weight500Black,).marginOnly(top: 80)

            ],
          ),
        ),
      );
    }
    );
  }

}
