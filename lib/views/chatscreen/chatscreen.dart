import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:so_teach/constants/app_colors/app_colors.dart';
import 'package:so_teach/controllers/chatscreen/chatscreen_controller.dart';
import 'package:so_teach/widgets/common_textfields/commn_textfield.dart';

import '../../widgets/common_textstyle/common_text_style.dart';
import 'dart:math' as math;

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyData(context),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Message your teacher",style: CommonTextStyle.font20weight600Black),
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
    return GetBuilder<ChatScreenController>(init:ChatScreenController(),builder: (_){
      return Container(
        width: Get.width,
        height: Get.height,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: AppColors.textFieldBordersColor),



        ),
child: Column(
  mainAxisAlignment: MainAxisAlignment.end,
  children: [
    Expanded(child: chatScreen(_)),
    sendMessageBox(_,context),
  ],
),

      );
    });


  }

  Widget sendMessageBox(ChatScreenController _, BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, bottom: 10, top: 10),
      height: 100,
      width: double.infinity,
      color: AppColors.whiteColor,
      child: Row(
        children: <Widget>[

          Expanded(
            child: CommonTextField(

              bordercolor: AppColors.textFieldBorderColor,
              hintText: "Type your reply",
              controller: _.message,
              radius: 30,

              // suffixIcon: Icon(
              //   Icons.mic,
              //   color: AppColors.whiteColor90,
              //   size: 15,
              // ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          GestureDetector(
            onTap: () async {
              chatScreen(_);
              _.message.clear();
            },
            child: CircleAvatar(
              backgroundColor: Colors.black,
              radius: 20,


              child: Icon(
                Icons.send,
                color: AppColors.whiteColor,
                size: 20,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
    );
  }

  Widget chatScreen(ChatScreenController _){

    return Container(
      color: Colors.black,
      height: 30,
      child: Text("${_.message.text}",style: CommonTextStyle.font12weight400Grey,),
    );
  }

}
