import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/setting/settingscreen_controller.dart';


class SettingViewScreen extends StatelessWidget {
  const SettingViewScreen({Key? key}) : super(key: key);

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
  Widget bodyData(context){
    return GetBuilder<SettingScreenController>(init:SettingScreenController(),builder: (_){
      return Container(
        height: Get.height,
        width: Get.width,
        child: Column(
          children: [

          ],
        ),
      );
    });
  }
}
