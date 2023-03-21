import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:so_teach/controllers/quiz/quiz_screen_controller.dart';

import '../../constants/app_assets/app_assets.dart';
import '../../constants/app_colors/app_colors.dart';
import '../../constants/app_strings/app_strings.dart';
import '../../routes/app_routes.dart';
import '../../widgets/common_buttons/common_button.dart';
import '../../widgets/common_textstyle/common_text_style.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({Key? key}) : super(key: key);

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
    return GetBuilder<QuizScreenController>(init: QuizScreenController(),builder: (_){
      return Container(
        height: Get.height,
        width: Get.width,
        color: Colors.white,
        child:  SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("${AppStrings.quizScreenText}",textAlign: TextAlign.center,style: CommonTextStyle.font22weight500Black,).marginOnly(top: 180),
              Text("${AppStrings.quizScreenContent}",textAlign: TextAlign.center,style: CommonTextStyle.font12weight400Grey,).marginOnly(top: 60,left: 20),
              CommonButton(
                width: Get.width/1.7,
                text: "Take the Quiz",
                textStyle: CommonTextStyle.font16weight500White,
                fillColor: AppColors.blackBtnAndTextColor,
                onPressed: (){
                  Get.toNamed(Routes.quizquestionScreen);
                },
              ).marginOnly(top: 50),


            ],
          ).marginSymmetric(horizontal: 40),
        ),
      );

    });

  }
}
