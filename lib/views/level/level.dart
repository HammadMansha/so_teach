import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:so_teach/constants/app_assets/app_assets.dart';
import 'package:so_teach/constants/app_colors/app_colors.dart';
import 'package:so_teach/controllers/level/levelscreen_controller.dart';
import 'package:so_teach/routes/app_routes.dart';
import 'package:so_teach/widgets/common_textstyle/common_text_style.dart';

import '../../constants/app_strings/app_strings.dart';
import '../../widgets/common_buttons/common_button.dart';

class LevelScreen extends StatelessWidget {
  const LevelScreen({Key? key}) : super(key: key);

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
    return GetBuilder<LevelScreenController>(init: LevelScreenController(),builder: (_){
     return Container(
       color: Colors.white,
       height: Get.height,
       width: Get.width,
       child: Column(
         children: [
           Text("${AppStrings.levelScreenContent}",style: CommonTextStyle.font32weight600Black,).marginOnly(top: 70),

           Container(
             height: 110,
             width: Get.width/1.5,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(10),
               border: Border.all(
                   color: AppColors.textFieldBordersColor,
                   width: 2,
                 ),
             ),
             child: Row(
               children: [
                 Image.asset("${AppAssets.level}").marginSymmetric(horizontal: 15),
                 Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text("Beginner",style: CommonTextStyle.font20weight600Black,),
                     SizedBox(height: 50,width:150,child: Text("${AppStrings.wantToLearn}",style: CommonTextStyle.font12weight400Grey,maxLines: 3,)).marginOnly(top: 4),

                   ],

                 )
               ],
             ),



           ).marginOnly(top: 60),

           CommonButton(
             text: "Start my journey",
             textStyle: CommonTextStyle.font16weight500White,
             fillColor: AppColors.blackBtnAndTextColor,
             onPressed: () {
               Get.toNamed(Routes.dashboardScreen);
             },
           ).marginOnly(top: 100),

         ],
       ).marginSymmetric(horizontal: 40),
     );
    });

  }
}
