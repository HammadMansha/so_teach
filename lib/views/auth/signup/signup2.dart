
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/app_assets/app_assets.dart';
import '../../../constants/app_colors/app_colors.dart';
import '../../../constants/app_strings/app_strings.dart';
import '../../../controllers/auth/signup/signup2_controller.dart';
import '../../../routes/app_routes.dart';
import '../../../widgets/common_buttons/common_button.dart';
import '../../../widgets/common_textfields/commn_textfield.dart';
import '../../../widgets/common_textstyle/common_text_style.dart';

class SignUpScreen2 extends StatelessWidget {
  const SignUpScreen2({Key? key}) : super(key: key);

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
    return GetBuilder<SignUp2Controller>(init: SignUp2Controller(),builder: (_) {
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
              CommonTextField(controller: _.dateOfBirth,fillcolor: Colors.transparent,radius: 7,bordercolor: AppColors.textFieldBordersColor,hintText:"Date of Birth(dd-mm-yy)",).marginOnly(top: 50),
              CommonTextField(controller: _.gender,fillcolor: Colors.transparent,radius: 7,bordercolor: AppColors.textFieldBordersColor,hintText:"Gender",suffixicon: Icon(Icons.keyboard_arrow_down_sharp),).marginOnly(top: 20),
              CommonTextField(controller: _.dreamJob,fillcolor: Colors.transparent,radius: 7,bordercolor: AppColors.textFieldBordersColor,hintText:"Dream job",).marginOnly(top: 20),
              CommonTextField(controller: _.subject,fillcolor: Colors.transparent,radius: 7,bordercolor: AppColors.textFieldBordersColor,hintText:"Subjects",suffixicon: Icon(Icons.keyboard_arrow_down_sharp)).marginOnly(top: 20),




              CommonButton(
                text: "Sign up",
                textStyle: CommonTextStyle.font16weight500White,
                fillColor: AppColors.blackBtnAndTextColor,
                onPressed: (){
                  Get.toNamed(Routes.signUpVerification);
                },
              ).marginOnly(top: 50),








            ],
          ).marginOnly(left: 40,right: 40),
        ),
      );
    }
    );
  }

}
