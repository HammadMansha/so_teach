import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:so_teach/constants/app_colors/app_colors.dart';
import 'package:so_teach/widgets/common_textfields/commn_textfield.dart';
import 'package:so_teach/widgets/common_textstyle/common_text_style.dart';

import '../../constants/app_assets/app_assets.dart';
import '../../constants/app_strings/app_strings.dart';
import '../../controllers/setting/settingscreen_controller.dart';


class SettingViewScreen extends StatelessWidget {
  const SettingViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: bodyData(context),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Settings",style: CommonTextStyle.font20weight600Black),
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
    return GetBuilder<SettingScreenController>(init:SettingScreenController(),builder: (_){
      return Container(
        height: Get.height,
        width: Get.width,
        color: Colors.white,
        child: Column(
          children: [

            CommonTextField(
              onTap: (){
                showContentLevelBottomSheet(_);
              },
              readOnly: true,
                controller: _.levels,
            fillcolor: Colors.white,
              hintText: "Levels",
              bordercolor: AppColors.blackBtnAndTextColor,
              radius: 7,
              suffixicon: Icon(Icons.arrow_forward_ios,size: 12,color: Colors.black,),
            ).marginOnly(top: 23),
            CommonTextField(
              controller: _.levels,
              fillcolor: Colors.white,
              hintText: "Lock Rotation",
              readOnly: true,

              bordercolor: AppColors.blackBtnAndTextColor,
              radius: 7,
            ).marginOnly(top: 23),
            CommonTextField(
              controller: _.levels,
              fillcolor: Colors.white,
              hintText: "Lock Table",
              readOnly: true,

              bordercolor: AppColors.blackBtnAndTextColor,
              radius: 7,
            ).marginOnly(top: 23),






          ],
        ).marginSymmetric(horizontal: 30),
      );
    });
  }


  void showContentLevelBottomSheet(SettingScreenController _) {
    Get.bottomSheet(

      Column(
        children: [
          Row(
            children: [

              GestureDetector(
                onTap: () {
                  // _.betterPlayerController.dispose();
                  Get.back();
                  // Get.off(() => Dashboard());
                },
                child: const Icon(
                  Icons.arrow_back_ios_new,
                  size: 15,
                  color: Colors.black,
                ).marginOnly(top: 70,left: 23),
              ),

              Text("Settings",style: CommonTextStyle.font20weight600Black).marginOnly(left: 70,top: 70),


            ],
          ),
          SizedBox(height: 60),





          Expanded(
            child: ListView.separated(
              itemCount: _.level.length,
              separatorBuilder: (BuildContext context, int index) => const SizedBox(),
              itemBuilder: (BuildContext context, int index) {
                return  Row(
                  children: [
                    index==0?SizedBox():Icon(Icons.lock_outline_rounded,size: 15,).marginOnly(right: 10),
                    Container(
                      height: 110,
                      width: Get.width/1.4,
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
                              Text("${_.level[index]}",style: CommonTextStyle.font20weight600Black,),
                              SizedBox(height: 50,width:150,child: Text("${_.content[index]}",style: CommonTextStyle.font12weight400Grey,maxLines: 3,)).marginOnly(top: 4),

                            ],


                          )
                        ],
                      ),



                    ).marginOnly(top: 14),
                  ],
                ).marginOnly(left: index==0?45:20);
              },
            ),
          ),
SizedBox(height: 50,),

        ],
      ),
      backgroundColor: Colors.white,
      isScrollControlled: true,
    );
  }
}
