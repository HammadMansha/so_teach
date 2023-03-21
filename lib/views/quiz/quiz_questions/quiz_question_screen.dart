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
                  // Container(
                  //   height: 80,
                  //   width: Get.width,
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.start,
                  //     crossAxisAlignment: CrossAxisAlignment.start,
                  //     children: [
                  //       Text(
                  //         "Q.   ",
                  //         textAlign: TextAlign.start,
                  //         style: CommonTextStyle.font32weight600Grey,
                  //       ),
                  //       Expanded(
                  //           child: Text(
                  //         "Which of the following is a verb?",
                  //         textAlign: TextAlign.start,
                  //         style: CommonTextStyle.font22weight500Black,
                  //         maxLines: 4,
                  //       )),
                  //     ],
                  //   ),
                  // ).marginOnly(top: 100),
                  // Container(
                  //   height: 250,
                  //   width: Get.width,
                  //   child: Column(
                  //     children: [
                  //       RadioListTile(
                  //         title: const Text("Apple"),
                  //         value: "apple",
                  //         groupValue: _.selectedAnswer,
                  //         onChanged: (value) {
                  //           _.selectedAnswer = value.toString();
                  //           _.update();
                  //         },
                  //       ),
                  //       RadioListTile(
                  //         title: const Text("Run"),
                  //         value: "run",
                  //         groupValue: _.selectedAnswer,
                  //         onChanged: (value) {
                  //           _.selectedAnswer = value.toString();
                  //           _.update();
                  //         },
                  //       ),
                  //       RadioListTile(
                  //         title: const Text("The"),
                  //         value: "the",
                  //         groupValue: _.selectedAnswer,
                  //         onChanged: (value) {
                  //           _.selectedAnswer = value.toString();
                  //           _.update();
                  //         },
                  //       ),
                  //       RadioListTile(
                  //         title: const Text("Table"),
                  //         value: "table",
                  //         groupValue: _.selectedAnswer,
                  //         onChanged: (value) {
                  //           _.selectedAnswer = value.toString();
                  //           _.update();
                  //         },
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // CommonButton(
                  //   text: "Submit",
                  //   textStyle: CommonTextStyle.font16weight500White,
                  //   fillColor: AppColors.blackBtnAndTextColor,
                  //   onPressed: () {},
                  // ),



                  _.questionIndex < _.questions.length
                      ? Quiz(
                    answerQuestion: _.answerQuestion,
                    questionIndex: _.questionIndex,
                    questions: _.questions,
                  ) //Quiz
                      : SizedBox(),
                ],
              ).marginSymmetric(horizontal: 40),
            ),
          );
        });
  }
}

class Question extends StatelessWidget {
  final String questionText;

  const Question(this.questionText, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Text(
        questionText,
        style: const TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ), //Text
    ); //Container
  }
}

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;
  const Quiz({
    Key? key,
    required this.questions,
    required this.answerQuestion,
    required this.questionIndex,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'].toString(),
        ), //Question
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => answerQuestion(answer['score']), answer['text'].toString());
        }).toList()
      ],
    ); //Column
  }
}

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  const Answer(this.selectHandler, this.answerText, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // use SizedBox for white space instead of Container
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: selectHandler(),
        style: ButtonStyle(
            textStyle:
                MaterialStateProperty.all(const TextStyle(color: Colors.white)),
            backgroundColor: MaterialStateProperty.all(Colors.green)),
        child: Text(answerText),
      ),

      // RaisedButton is deprecated and should not be used
      // Use ElevatedButton instead

      // child: RaisedButton(
      //   color: const Color(0xFF00E676),
      //   textColor: Colors.white,
      //   onPressed: selectHandler(),
      //   child: Text(answerText),
      // ), //RaisedButton
    ); //Container
  }
}
