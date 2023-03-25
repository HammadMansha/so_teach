
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/app_assets/app_assets.dart';
import '../../../constants/app_colors/app_colors.dart';
import '../../../constants/app_strings/app_strings.dart';
import '../../../controllers/auth/signup/signup_controller.dart';
import '../../../routes/app_routes.dart';
import '../../../widgets/common_buttons/common_button.dart';
import '../../../widgets/common_textfields/commn_textfield.dart';
import '../../../widgets/common_textstyle/common_text_style.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyData(context),
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

    ),

    );
  }
  Widget bodyData(context){
    return GetBuilder<SignUpController>(init: SignUpController(),builder: (_) {
      return Container(
        height: Get.height,
        width: Get.width,
        color: Colors.white,

        child: SingleChildScrollView(
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 120,width:150,child: Image.asset(AppAssets.logo)),
              CommonTextField(controller: _.firstName,fillcolor: Colors.transparent,radius: 7,bordercolor: AppColors.textFieldBordersColor,hintText:"First Name",).marginOnly(top: 50),
              CommonTextField(controller: _.lastName,fillcolor: Colors.transparent,radius: 7,bordercolor: AppColors.textFieldBordersColor,hintText:"Last Name",).marginOnly(top: 20),
              CommonTextField(controller: _.userName,fillcolor: Colors.transparent,radius: 7,bordercolor: AppColors.textFieldBordersColor,hintText:"Username",).marginOnly(top: 20),
              CommonTextField(controller: _.password,fillcolor: Colors.transparent,radius: 7,bordercolor: AppColors.textFieldBordersColor,hintText:"Password",maxlines: 1,isTextHidden: true,).marginOnly(top: 20),

              CommonTextField(controller: _.confirmPassword,isTextHidden:true,fillcolor: Colors.transparent,radius: 7,bordercolor: AppColors.textFieldBordersColor,hintText:"Confirm Password",maxlines: 1,).marginOnly(top: 20),



              CommonButton(
                text: "Continue",
                textStyle: CommonTextStyle.font16weight500White,
                fillColor: AppColors.blackBtnAndTextColor,
                onPressed: (){
                  Get.toNamed(Routes.signUpScreen2);
                },
              ).marginOnly(top: 15),








            ],
          ).marginOnly(left: 40,right: 40),
        ),
      );
    }
    );
  }

}
