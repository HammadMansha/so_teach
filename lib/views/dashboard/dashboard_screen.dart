import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:so_teach/controllers/dashboard/dashboardscreen_controller.dart';

import '../../constants/app_assets/app_assets.dart';
import '../../constants/app_colors/app_colors.dart';
import '../../constants/app_strings/app_strings.dart';
import '../../widgets/common_textstyle/common_text_style.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: bodyData(context),
      drawer: Drawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey),

        backgroundColor: Colors.white,
        elevation: 0.0,

      ),);
  }
  Widget bodyData(context)
  {
    return GetBuilder<DashboardScreenController>(init:DashboardScreenController(),builder: (_){
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
                      Image.asset("${AppAssets.level}",height: 30,width: 20,).marginSymmetric(horizontal: 15,vertical: 15),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Unit 2",style: CommonTextStyle.font20weight600Black,).marginOnly(top: 10),
                          Text("Beginner Level",style: CommonTextStyle.font12weight400Grey,maxLines: 3,).marginOnly(top: 4),

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
                          color: Color(0xff0f2010),

                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: AppColors.textFieldBordersColor,
                            width: 2,
                          ),
                        ),
                      ).marginOnly(left: 15,right: 5),
                      Container(
                        height: 7,
                        width: 25,

                        decoration: BoxDecoration(
                          color: Color(0xff265829),

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
                separatorBuilder: (BuildContext context, int index) => const Divider(),
                itemBuilder: (BuildContext context, int index) {
                  return  Container(
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
                        Image.asset("${AppAssets.courseImg}").marginSymmetric(horizontal: 15,vertical: 15),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Unit 1",style: CommonTextStyle.font16weight400Black,).marginOnly(top: 10),
                            SizedBox(height: 60,width:120,child: Text("How do you describe the weather?",style: CommonTextStyle.font20weight600Black,maxLines: 3,).marginOnly(top: 4)),
                            SizedBox(height: 50,width:150,child: Text("learn how to describe the weather and speak clearly",style: CommonTextStyle.font12weight400Grey,maxLines: 3,).marginOnly(top: 4)),
                          ],

                        ),


                      ],
                    ),



                  ).marginOnly(top: 20);
                },
              ),
            )



          ],
        ).marginSymmetric(horizontal: 40),
      );

    });
  }
}
