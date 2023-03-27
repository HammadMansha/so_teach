import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:so_teach/controllers/dashboard/dashboardscreen_controller.dart';
import 'package:so_teach/routes/app_routes.dart';
import 'package:so_teach/widgets/common_buttons/common_button.dart';
import 'package:so_teach/widgets/custom_navbar/custom_navbar.dart';

import '../../constants/app_assets/app_assets.dart';
import '../../constants/app_colors/app_colors.dart';
import '../../constants/app_strings/app_strings.dart';
import '../../widgets/common_textstyle/common_text_style.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyData(context),
      bottomNavigationBar: const BottomNavBar(),
      drawer: Drawer(
        width: Get.width/1.3,
        child: Column(
          children:  [
            SizedBox(height: Get.height/3.7,),
            ListTile(
              leading: Icon(Icons.settings,color: Colors.black,),
              trailing: Icon(Icons.arrow_forward_ios,size: 15,),
              title: Text("Settings"),
              onTap: (){
                Get.toNamed(Routes.settingsScreen);
              },

            ),

            ListTile(
              leading: Icon(Icons.calendar_month_outlined,color: Colors.black,),
              trailing: Icon(Icons.arrow_forward_ios,size: 15,),
              title: Text("Calendar"),
              onTap: (){
                Get.toNamed(Routes.calender);
              },

            ),
            ListTile(
              leading: Image.asset("${AppAssets.logo}",height: 30,width: 30,),
              trailing: Icon(Icons.arrow_forward_ios,size: 15,),
              title: Text("About Us"),

            ),
            Spacer(),
            CommonButton(text: "Logout", textStyle: CommonTextStyle.font12weight400black, onPressed: (){Get.toNamed(Routes.login);}, fillColor: Colors.white,width: Get.width,).marginOnly(bottom: 30,right: 30),
          ],
        ).marginOnly(left: 20),
      ),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.grey),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
    );
  }

  Widget bodyData(context) {
    return GetBuilder<DashboardScreenController>(
        init: DashboardScreenController(),
        builder: (_) {
          return Container(
            height: Get.height,
            width: Get.width,
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  height: 80,
                  width: Get.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: AppColors.textFieldBordersColor,
                      width: 2,
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            "${AppAssets.level}",
                            height: 30,
                            width: 20,
                          ).marginSymmetric(horizontal: 15, vertical: 15),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Unit 2",
                                style: CommonTextStyle.font20weight600Black,
                              ).marginOnly(top: 10),
                              Text(
                                "Beginner Level",
                                style: CommonTextStyle.font12weight400Grey,
                                maxLines: 3,
                              ).marginOnly(top: 4),
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height: 7,
                            width: 25,
                            decoration: BoxDecoration(
                              color: const Color(0xff0f2010),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: AppColors.textFieldBordersColor,
                                width: 2,
                              ),
                            ),
                          ).marginOnly(left: 15, right: 5),
                          Container(
                            height: 7,
                            width: 25,
                            decoration: BoxDecoration(
                              color: const Color(0xff265829),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: AppColors.textFieldBordersColor,
                                width: 2,
                              ),
                            ),
                          ).marginOnly(right: 5),
                          Container(
                            height: 7,
                            width: 25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: AppColors.textFieldBordersColor,
                                width: 2,
                              ),
                            ),
                          ).marginOnly(right: 5),
                          Container(
                            height: 7,
                            width: 25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: AppColors.textFieldBordersColor,
                                width: 2,
                              ),
                            ),
                          ).marginOnly(right: 5),
                          Container(
                            height: 7,
                            width: 25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: AppColors.textFieldBordersColor,
                                width: 2,
                              ),
                            ),
                          ).marginOnly(right: 5),
                          Container(
                            height: 7,
                            width: 25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: AppColors.textFieldBordersColor,
                                width: 2,
                              ),
                            ),
                          ).marginOnly(right: 5),
                          Container(
                            height: 7,
                            width: 25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: AppColors.textFieldBordersColor,
                                width: 2,
                              ),
                            ),
                          ).marginOnly(right: 5),
                          Container(
                            height: 7,
                            width: 25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: AppColors.textFieldBordersColor,
                                width: 2,
                              ),
                            ),
                          ).marginOnly(right: 5),
                        ],
                      )
                    ],
                  ),
                ).marginOnly(top: 20),
                Expanded(
                  child: ListView.separated(
                    itemCount: 12,
                    separatorBuilder: (BuildContext context, int index) =>
                        const SizedBox(),
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [

                          index==11?                          Container(
                            height: 150,
                            width: Get.width,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: AppColors.black,
                                width: 2,
                              ),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset("${AppAssets.courseImg}")
                                    .marginSymmetric(
                                    horizontal: 15, vertical: 15),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Final Exam",
                                      style:
                                      CommonTextStyle.font16weight500White,
                                    ).marginOnly(top: 10),
                                    SizedBox(
                                        height: 50,
                                        width: 150,
                                        child: Text(
                                          "Take the final exam to test your development in English Language",
                                          style: CommonTextStyle
                                              .font12weight400White,
                                          maxLines: 3,
                                        ).marginOnly(top: 4)),
                                    
                                    SizedBox(
                                      height: 40,
                                      child: CommonButton(text: "Start Exam", textStyle:CommonTextStyle.font12weight400White, onPressed:(){
                                        // Get.toNamed(Routes.quizScreen);
                                      }, fillColor: Color(0xff4a4a4a),

                                      width: 100,
                                      ).marginOnly(top:10),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ).marginOnly(top: 20):


                          Container(
                            height: 150,
                            width: Get.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: AppColors.textFieldBordersColor,
                                width: 2,
                              ),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset("${AppAssets.courseImg}")
                                    .marginSymmetric(
                                        horizontal: 15, vertical: 15),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${_.unit[index]}",
                                      style:
                                          CommonTextStyle.font16weight400Black,
                                    ).marginOnly(top: 10),
                                    SizedBox(
                                        height: 60,
                                        width: 120,
                                        child: Text(
                                          "How do you describe the weather?",
                                          style: CommonTextStyle
                                              .font20weight600Black,
                                          maxLines: 3,
                                        ).marginOnly(top: 4)),
                                    SizedBox(
                                        height: 50,
                                        width: 150,
                                        child: Text(
                                          "learn how to describe the weather and speak clearly",
                                          style: CommonTextStyle
                                              .font12weight400Grey,
                                          maxLines: 3,
                                        ).marginOnly(top: 4)),
                                  ],
                                ),
                              ],
                            ),
                          ).marginOnly(top: 20),
                          index == 11
                              ? CommonButton(
                                  text: "Download Certificates",
                                  textStyle:
                                      CommonTextStyle.font16weight500White,
                                  onPressed: () {},
                                  fillColor: AppColors.blackBtnAndTextColor,
                                  width: Get.width,
                                ).marginOnly(top: 20, bottom: 10)
                              : const SizedBox(),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ).marginSymmetric(horizontal: 40),
          );
        });
  }
}
