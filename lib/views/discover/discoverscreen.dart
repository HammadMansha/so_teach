import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:so_teach/constants/app_assets/app_assets.dart';
import 'package:so_teach/constants/app_strings/app_strings.dart';
import 'package:so_teach/controllers/discover/discover_screen_controller.dart';

import '../../widgets/common_textstyle/common_text_style.dart';
import '../../widgets/custom_navbar/custom_navbar.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({Key? key}) : super(key: key);

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: bodyData(context)),
      bottomNavigationBar: BottomNavBar(),

    );
  }

  Widget bodyData(context){
    return GetBuilder<DiscoverScreenController>(init: DiscoverScreenController(),builder: (_){
      return Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: Get.height/3,
                width: Get.width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppAssets.discover,),
                    fit: BoxFit.fill


                  ),
                ),
              ),

              Column(
                children: [
                  //-----------------------------------discover heading 1 and content-----------
                  Text("${AppStrings.discoverHeading1}",style:CommonTextStyle.font32weight600Black,textAlign: TextAlign.center,).marginOnly(top: 30),
                  Text("${AppStrings.discoverContent1}",style:CommonTextStyle.font12weight400black,textAlign: TextAlign.start,).marginOnly(top: 20),
                  //-----------------------------------discover heading 2 and content-----------

                  Text("${AppStrings.discoverHeading2}",style:CommonTextStyle.font14weight500Black,textAlign: TextAlign.center,).marginOnly(top: 10),
                  Text("${AppStrings.discoverContent2}",style:CommonTextStyle.font12weight400black,textAlign: TextAlign.start,).marginOnly(top: 20),

                  Text("${AppStrings.discoverHeading3}",style:CommonTextStyle.font14weight500Black,textAlign: TextAlign.center,).marginOnly(top: 10),
                  Text("${AppStrings.discoverContent3}",style:CommonTextStyle.font12weight400black,textAlign: TextAlign.start,).marginOnly(top: 20),
                  SizedBox(height: 30,),



                ],
              ).marginSymmetric(horizontal: 22),
            ],
          ),
        ),

      );
    });

  }


}
