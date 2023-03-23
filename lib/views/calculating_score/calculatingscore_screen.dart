import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:so_teach/constants/app_assets/app_assets.dart';
import 'package:so_teach/constants/app_strings/app_strings.dart';
import 'package:so_teach/widgets/common_textstyle/common_text_style.dart';

import '../../controllers/calculating_score/calculatingscore_controller.dart';
import '../../routes/app_routes.dart';

class CalculatingScoreScreen extends StatefulWidget {
  const CalculatingScoreScreen({Key? key}) : super(key: key);

  @override
  State<CalculatingScoreScreen> createState() => _CalculatingScoreScreenState();
}

class _CalculatingScoreScreenState extends State<CalculatingScoreScreen> {
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
    return GetBuilder<CalculatingScreenController>(init: CalculatingScreenController(),builder: (_){
      Future. delayed(const Duration(seconds: 4), ()
      {
        Get.toNamed(Routes.levelScreen);
      }
      );
      return Container(
        height: Get.height,
        width: Get.width,
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(height: Get.height/5,),
            Text("${AppStrings.calculateResult}",style: CommonTextStyle.font32weight600Black,),
            Image.asset("${AppAssets.loading}").marginOnly(top: 150),

          ],
        ),
      );

    });
  }
}
