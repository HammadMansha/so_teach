import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:so_teach/controllers/quiz/quiz_question/quiz_questions_controller.dart';

import '../../../constants/app_colors/app_colors.dart';
import '../../../constants/app_strings/app_strings.dart';
import '../../../routes/app_routes.dart';
import '../../../widgets/common_buttons/common_button.dart';
import '../../../widgets/common_textstyle/common_text_style.dart';

class QuizQuestionScreen extends StatelessWidget {
  QuizQuestionScreen({Key? key}) : super(key: key);

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

  Widget bodyData(context) {
    return GetBuilder<QuizQuestionScreenController>(
        init: QuizQuestionScreenController(),
        builder: (_) {
          return Container(
            height: Get.height,
            width: Get.width,
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 80,
                    width: Get.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Q.   ",
                          textAlign: TextAlign.start,
                          style: CommonTextStyle.font32weight600Grey,
                        ),
                        Expanded(
                            child: Text(
                          "Which of the following is a verb?",
                          textAlign: TextAlign.start,
                          style: CommonTextStyle.font22weight500Black,
                          maxLines: 4,
                        )),
                      ],
                    ),
                  ).marginOnly(top: 100),
                  Container(
                    height: 250,
                    width: Get.width,
                    child: Column(
                      children: [
                        RadioListTile(
                          title: const Text("Apple"),
                          value: "apple",
                          groupValue: _.selectedAnswer,
                          onChanged: (value) {
                            _.selectedAnswer = value.toString();
                            _.update();
                          },
                        ),
                        RadioListTile(
                          title: const Text("Run"),
                          value: "run",
                          groupValue: _.selectedAnswer,
                          onChanged: (value) {
                            _.selectedAnswer = value.toString();
                            _.update();
                          },
                        ),
                        RadioListTile(
                          title: const Text("The"),
                          value: "the",
                          groupValue: _.selectedAnswer,
                          onChanged: (value) {
                            _.selectedAnswer = value.toString();
                            _.update();
                          },
                        ),
                        RadioListTile(
                          title: const Text("Table"),
                          value: "table",
                          groupValue: _.selectedAnswer,
                          onChanged: (value) {
                            _.selectedAnswer = value.toString();
                            _.update();
                          },
                        ),
                      ],
                    ),
                  ),
                  CommonButton(
                    text: "Submit",
                    textStyle: CommonTextStyle.font16weight500White,
                    fillColor: AppColors.blackBtnAndTextColor,
                    onPressed: () {},
                  ),




                ],
              ).marginSymmetric(horizontal: 40),
            ),
          );
        });
  }
}


