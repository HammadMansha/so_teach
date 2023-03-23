import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/setting/settingscreen2_controller.dart';

class SettingViewScreen2 extends StatelessWidget {
  const SettingViewScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
  Widget bodyData(context){
    return GetBuilder<SettingScreen2Controller>(init:SettingScreen2Controller(),builder:(_){
      return Container(
        height: Get.height,
        width: Get.width,
        color: Colors.white,
      );


    } );

  }
}
