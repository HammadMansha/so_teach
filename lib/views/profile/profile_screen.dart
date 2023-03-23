import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/_http/_io/_file_decoder_io.dart';
import 'package:so_teach/constants/app_assets/app_assets.dart';
import 'package:so_teach/widgets/common_buttons/common_button.dart';

import '../../constants/app_colors/app_colors.dart';
import '../../controllers/profilescreen_controller/profilescreen_controller.dart';
import '../../widgets/common_textstyle/common_text_style.dart';
import '../../widgets/custom_navbar/custom_navbar.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),
      body: SafeArea(
          child:
      bodyData(context)),

    );
  }
  Widget bodyData(context){
    return GetBuilder<ProfileScreenController>(init:ProfileScreenController(),builder: (_){
      return Container(
        color: Colors.white,
        height: Get.height,
        width: Get.width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Profile",style: CommonTextStyle.font22weight500Black,).marginOnly(top: 40),
              const CircleAvatar(
                radius:70 ,
                backgroundImage: AssetImage("${AppAssets.profile_pic}"),

              ).marginOnly(top: 30),

              MaterialButton(
                height: 26,
                  minWidth: Get.width/2.5,
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7.0),
                    side:   const BorderSide(
                      color:AppColors.blackBtnAndTextColor,
                    ),
                  ),

                  child: const Text("Upload New",style: TextStyle(color: Colors.white,fontSize: 10),),
                  onPressed: (){

              }


              ).marginOnly(top: 13),

              Text("Theo Stone",style: CommonTextStyle.font20weight600Black,).marginOnly(top: 32),
              Row(
                children: [
                  Text("Age",style: CommonTextStyle.font20weight600Black,),
                  const Spacer(),
                  Text("12",style: CommonTextStyle.font12weight400black,),


                ],
              ).marginSymmetric(vertical: 26),
              const Divider(
                thickness: 2.0,
              ),
              Row(
                children: [
                  Text("Subject",style: CommonTextStyle.font20weight600Black,),
                  const Spacer(),
                  Text("English",style: CommonTextStyle.font12weight400black,),


                ],
              ).marginSymmetric(vertical: 26),
              const Divider(
                thickness: 2.0,
              ),

              Row(
                children: [
                  Text("Level",style: CommonTextStyle.font20weight600Black,),
                  const Spacer(),
                  Container(
                    height: 87,
                    width: Get.width/2.3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: AppColors.textFieldBordersColor,
                        width: 2,
                      ),
                    ),
                    child: Row(
                      children: [
                        SizedBox(height:60,width:60,child: Image.asset("${AppAssets.level}").marginSymmetric(horizontal: 15)),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Beginner",style: CommonTextStyle.font8weight600Black,).marginOnly(top: 20),
                            SizedBox(height: 50,width:80,child: Text("I want to learn the basics of English language",style: CommonTextStyle.font8weight400Grey,maxLines: 3,)).marginOnly(top: 4),

                          ],


                        )
                      ],
                    ),



                  ).marginOnly(top: 14),



                ],
              ).marginSymmetric(vertical: 26),
              const Divider(
                thickness: 2.0,
              ),

              Row(
                children: [
                  Text("Certificate",style: CommonTextStyle.font20weight600Black,),
                  const Spacer(),
                  Text("English Unit 1",style: CommonTextStyle.font12weight400black,),


                ],
              ).marginSymmetric(vertical: 26),
              const Divider(
                thickness: 2.0,
              ),

              CommonButton(text: "Change Subject", textStyle: CommonTextStyle.font16weight500White, onPressed: (){
                showSubjectBottomSheet(_);
              }, fillColor: AppColors.blackBtnAndTextColor).marginOnly(top: 60,bottom: 25),
              CommonButton(text: "Certificates", textStyle: CommonTextStyle.font16weight500White, onPressed: (){showCertificatesBottomSheet(_);}, fillColor: AppColors.blackBtnAndTextColor).marginOnly(bottom: 31),



            ],
          ).marginSymmetric(horizontal: 70),
        ),
      );
    });


  }

  void showSubjectBottomSheet(ProfileScreenController _) {
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



            ],
          ),
          const SizedBox(height: 60),





          Expanded(
            child: ListView.separated(
              itemCount: _.subjects.length,
              separatorBuilder: (BuildContext context, int index) => const SizedBox(),
              itemBuilder: (BuildContext context, int index) {
                return Text("${_.subjects[index]}",style: CommonTextStyle.font12weight400Grey,).marginOnly(bottom: 30,left: 40);
              },
            ),
          ),

        ],
      ),
      backgroundColor: Colors.white,
      isScrollControlled: true,
    );
  }

  void showCertificatesBottomSheet(ProfileScreenController _) {
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



            ],
          ),
          const SizedBox(height: 60),





          Expanded(
            child: ListView.separated(
              itemCount: _.certificates.length,
              separatorBuilder: (BuildContext context, int index) => const SizedBox(),
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title:  Text("${_.certificates[index]}",style: CommonTextStyle.font12weight400Grey,).marginOnly(bottom: 30,left: 40),
                  trailing: const Icon(Icons.arrow_forward_ios,size: 15,).marginOnly(right: 20,bottom: 40),
                );



              },
            ),
          ),

        ],
      ),
      backgroundColor: Colors.white,
      isScrollControlled: true,
    );
  }


}
