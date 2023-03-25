import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:so_teach/constants/app_assets/app_assets.dart';
import 'package:so_teach/constants/app_strings/app_strings.dart';

import '../../constants/app_colors/app_colors.dart';
import '../../controllers/dictionary/dictionary_screen_controller.dart';
import '../../routes/app_routes.dart';
import '../../widgets/common_textfields/commn_textfield.dart';
import '../../widgets/common_textstyle/common_text_style.dart';
import '../../widgets/custom_navbar/custom_navbar.dart';


class DictionaryScreen extends StatefulWidget {
  const DictionaryScreen({Key? key}) : super(key: key);

  @override
  State<DictionaryScreen> createState() => _DictionaryScreenState();
}

class _DictionaryScreenState extends State<DictionaryScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: bodyData(context),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Dictionary",style: CommonTextStyle.font20weight600Black),
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
    return GetBuilder<DictionaryScreenController>(init: DictionaryScreenController(),builder: (_){
      return Container(
        color: Colors.white,
        height: Get.height,
        width: Get.width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("${AppStrings.whatWordDoYou}",style: CommonTextStyle.font32weight600Black,textAlign: TextAlign.center,).marginOnly(top: 20,right: 30,left: 30),
              SizedBox(
                height: 70,
                child: CommonTextField(
                  fillcolor: Colors.white,
                  maxlines: 1,
                  suffixicon: Icon(Icons.search).marginOnly(right: 20),
                  controller: _.searchText,
                  hintText: "Search for any word or phrase",
                  radius: 13,
                  bordercolor: AppColors.textFieldBorderColor,


                ).marginOnly(top: 25,left: 30,right: 30),
              ),
              SizedBox(height: 40,),
              Center(
                child: Container(
                  height: Get.width/2.5,
                  width: Get.width/2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: AppColors.black,
                      width: 2,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Word of the day",style: CommonTextStyle.font20weight600Black,).marginOnly(top: 10),
                      Row(
                        children: [
                          Text("Vellicate",style: CommonTextStyle.font20weight600Black,).marginOnly(top: 10),
                          Spacer(),
                          Image.asset("${AppAssets.sound}",height: 20,width: 20,).marginOnly(top: 5),
                        ],
                      ).marginSymmetric(horizontal: 10),

                      Align(alignment: Alignment.bottomLeft,child: Text("[vel-i-keyt]",style: CommonTextStyle.font12weight400Grey,).marginOnly(top: 10,left: 30)),

                      Container(
                        height: 1,
                        width: 50,
                        color: AppColors.black,
                      ).marginOnly(right: 50,top: 7),
                      Align(alignment: Alignment.bottomLeft,child: Text("verb",style: CommonTextStyle.font12weight400Grey,).marginOnly(top: 6,left: 50)),
                      Align(alignment: Alignment.bottomLeft,child: Text("To Twitch",style: CommonTextStyle.font12weight400Grey,).marginOnly(top: 6,left: 40)),





                    ],
                  ),
                ),
              ),

              Center(child: Text("Search by Alphabet",style: CommonTextStyle.font20weight600Black,).marginOnly(top: 30)),


              GestureDetector(
                onTap:(){
                  searchAlphabetBottomSheet(_);
                },
                child: SizedBox(

                  height: 200,
                  width: Get.width,

                  child:  Wrap(
                    direction: Axis.horizontal,
                    children:[
                      CircleAvatar(
                        backgroundColor: AppColors.textFieldBorderColor,
                        child: Text("A",style: CommonTextStyle.font16weight500White,),
                      ).marginOnly(right: 3,bottom: 3),
                      CircleAvatar(
                        backgroundColor: AppColors.textFieldBorderColor,
                        child: Text("B",style: CommonTextStyle.font16weight500White,),
                      ).marginOnly(right: 3,bottom: 3),
                      CircleAvatar(
                        backgroundColor: AppColors.textFieldBorderColor,
                        child: Text("C",style: CommonTextStyle.font16weight500White,),
                      ).marginOnly(right: 3,bottom: 3),
                      CircleAvatar(
                        backgroundColor: AppColors.textFieldBorderColor,
                        child: Text("D",style: CommonTextStyle.font16weight500White,),
                      ).marginOnly(right: 3,bottom: 3),
                      CircleAvatar(
                        backgroundColor: AppColors.textFieldBorderColor,
                        child: Text("E",style: CommonTextStyle.font16weight500White,),
                      ).marginOnly(right: 3,bottom: 3),
                      CircleAvatar(
                        backgroundColor: AppColors.textFieldBorderColor,
                        child: Text("F",style: CommonTextStyle.font16weight500White,),
                      ).marginOnly(right: 3,bottom: 3),
                      CircleAvatar(
                        backgroundColor: AppColors.textFieldBorderColor,
                        child: Text("G",style: CommonTextStyle.font16weight500White,),
                      ).marginOnly(right: 3,bottom: 3),
                      CircleAvatar(
                        backgroundColor: AppColors.textFieldBorderColor,
                        child: Text("H",style: CommonTextStyle.font16weight500White,),
                      ).marginOnly(right: 3,bottom: 3),
                      CircleAvatar(
                        backgroundColor: AppColors.textFieldBorderColor,
                        child: Text("I",style: CommonTextStyle.font16weight500White,),
                      ).marginOnly(right: 3,bottom: 3),
                      CircleAvatar(
                        backgroundColor: AppColors.textFieldBorderColor,
                        child: Text("K",style: CommonTextStyle.font16weight500White,),
                      ).marginOnly(right: 3,bottom: 3),
                      CircleAvatar(
                        backgroundColor: AppColors.textFieldBorderColor,
                        child: Text("L",style: CommonTextStyle.font16weight500White,),
                      ).marginOnly(right: 3,bottom: 3),
                      CircleAvatar(
                        backgroundColor: AppColors.textFieldBorderColor,
                        child: Text("M",style: CommonTextStyle.font16weight500White,),
                      ).marginOnly(right: 3,bottom: 3),
                      CircleAvatar(
                        backgroundColor: AppColors.textFieldBorderColor,
                        child: Text("N",style: CommonTextStyle.font16weight500White,),
                      ).marginOnly(right: 3,bottom: 3),
                      CircleAvatar(
                        backgroundColor: AppColors.textFieldBorderColor,
                        child: Text("O",style: CommonTextStyle.font16weight500White,),
                      ).marginOnly(right: 3,bottom: 3),
                      CircleAvatar(
                        backgroundColor: AppColors.textFieldBorderColor,
                        child: Text("P",style: CommonTextStyle.font16weight500White,),
                      ).marginOnly(right: 3,bottom: 3),
                      CircleAvatar(
                        backgroundColor: AppColors.textFieldBorderColor,
                        child: Text("Q",style: CommonTextStyle.font16weight500White,),
                      ).marginOnly(right: 3,bottom: 3),
                      CircleAvatar(
                        backgroundColor: AppColors.textFieldBorderColor,
                        child: Text("R",style: CommonTextStyle.font16weight500White,),
                      ).marginOnly(right: 3,bottom: 3),
                      CircleAvatar(
                        backgroundColor: AppColors.textFieldBorderColor,
                        child: Text("S",style: CommonTextStyle.font16weight500White,),
                      ).marginOnly(right: 3,bottom: 3),
                      CircleAvatar(
                        backgroundColor: AppColors.textFieldBorderColor,
                        child: Text("T",style: CommonTextStyle.font16weight500White,),
                      ).marginOnly(right: 3,bottom: 3),
                      CircleAvatar(
                        backgroundColor: AppColors.textFieldBorderColor,
                        child: Text("U",style: CommonTextStyle.font16weight500White,),
                      ).marginOnly(right: 3,bottom: 3),
                      CircleAvatar(
                        backgroundColor: AppColors.textFieldBorderColor,
                        child: Text("V",style: CommonTextStyle.font16weight500White,),
                      ).marginOnly(right: 3,bottom: 3),
                      CircleAvatar(
                        backgroundColor: AppColors.textFieldBorderColor,
                        child: Text("W",style: CommonTextStyle.font16weight500White,),
                      ).marginOnly(right: 3,bottom: 3),
                      CircleAvatar(
                        backgroundColor: AppColors.textFieldBorderColor,
                        child: Text("X",style: CommonTextStyle.font16weight500White,),
                      ).marginOnly(right: 3,bottom: 3),
                      CircleAvatar(
                        backgroundColor: AppColors.textFieldBorderColor,
                        child: Text("Y",style: CommonTextStyle.font16weight500White,),
                      ).marginOnly(right: 3,bottom: 3),
                      CircleAvatar(
                        backgroundColor: AppColors.textFieldBorderColor,
                        child: Text("Z",style: CommonTextStyle.font16weight500White,),
                      ).marginOnly(right: 3,bottom: 3),



                    ],
                  ),
                ).marginOnly(top: 20,bottom: 20,left: 30),
              ),







            ],
          ),
        ),
      );
    });

  }


  void searchAlphabetBottomSheet(DictionaryScreenController _){
    Get.bottomSheet(

      SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  ).marginOnly(top: 70,),
                ),

                Text("Dictionary",style: CommonTextStyle.font20weight600Black).marginOnly(left: 70,top: 70),


              ],
            ),
            SizedBox(height: 60),

            Text("${AppStrings.whatWordDoYou}",style: CommonTextStyle.font32weight600Black,textAlign: TextAlign.center,).marginOnly(top: 20),
            SizedBox(
              height: 70,
              child: CommonTextField(
                fillcolor: Colors.white,
                maxlines: 1,
                suffixicon: Icon(Icons.search).marginOnly(right: 20),
                controller: _.searchText,
                hintText: "Search for any word or phrase",
                radius: 13,
                bordercolor: AppColors.textFieldBorderColor,


              ).marginOnly(top: 25),
            ),
            SizedBox(height: 40,),
//----------------------------------Word A-------------------
            Text("A",style:CommonTextStyle.font32weight600Black,).marginOnly(bottom: 20),
            Row(
              children: [
                Text("Abduct",style:CommonTextStyle.font14weight400Black,),
                Spacer(),
                Text("See Meaning",style:CommonTextStyle.font14weight400Green,),


              ],
            ),
            Row(
              children: [
                Text("Abacus",style:CommonTextStyle.font14weight400Black,),
                Spacer(),
                Text("See Meaning",style:CommonTextStyle.font14weight400Green,),


              ],
            ),
            Row(
              children: [
                Text("Abandon",style:CommonTextStyle.font14weight400Black,),
                Spacer(),
                Text("See Meaning",style:CommonTextStyle.font14weight400Green,),


              ],
            ),
            Row(
              children: [
                Text("Abide",style:CommonTextStyle.font14weight400Black,),
                Spacer(),
                Text("See Meaning",style:CommonTextStyle.font14weight400Green,),


              ],
            ),


            //-------------------Word B------------------------
            Text("B",style:CommonTextStyle.font32weight600Black,).marginOnly(bottom: 20,top: 20),
            Row(
              children: [
                Text("Baby",style:CommonTextStyle.font14weight400Black,),
                Spacer(),
                Text("See Meaning",style:CommonTextStyle.font14weight400Green,),


              ],
            ),
            Row(
              children: [
                Text("Bachelor",style:CommonTextStyle.font14weight400Black,),
                Spacer(),
                Text("See Meaning",style:CommonTextStyle.font14weight400Green,),


              ],
            ),
            Row(
              children: [
                Text("backdrop",style:CommonTextStyle.font14weight400Black,),
                Spacer(),
                Text("See Meaning",style:CommonTextStyle.font14weight400Green,),


              ],
            ),
            Row(
              children: [
                Text("Badger",style:CommonTextStyle.font14weight400Black,),
                Spacer(),
                Text("See Meaning",style:CommonTextStyle.font14weight400Green,),


              ],
            ),

            //-------------------Word c------------------------
            Text("C",style:CommonTextStyle.font32weight600Black,).marginOnly(bottom: 20,top: 20),
            Row(
              children: [
                Text("Cabaret",style:CommonTextStyle.font14weight400Black,),
                Spacer(),
                Text("See Meaning",style:CommonTextStyle.font14weight400Green,),


              ],
            ),
            Row(
              children: [
                Text("Cacophony",style:CommonTextStyle.font14weight400Black,),
                Spacer(),
                Text("See Meaning",style:CommonTextStyle.font14weight400Green,),


              ],
            ),
            Row(
              children: [
                Text("Cactus",style:CommonTextStyle.font14weight400Black,),
                Spacer(),
                Text("See Meaning",style:CommonTextStyle.font14weight400Green,),


              ],
            ),
            Row(
              children: [
                Text("Cadence",style:CommonTextStyle.font14weight400Black,),
                Spacer(),
                Text("See Meaning",style:CommonTextStyle.font14weight400Green,),


              ],
            ),

            //-------------------Word D------------------------
            Text("D",style:CommonTextStyle.font32weight600Black,).marginOnly(bottom: 20,top: 20),
            Row(
              children: [
                Text("Daffodil",style:CommonTextStyle.font14weight400Black,),
                Spacer(),
                Text("See Meaning",style:CommonTextStyle.font14weight400Green,),


              ],
            ),
            Row(
              children: [
                Text("Dainty",style:CommonTextStyle.font14weight400Black,),
                Spacer(),
                Text("See Meaning",style:CommonTextStyle.font14weight400Green,),


              ],
            ),
            Row(
              children: [
                Text("Dalmatian",style:CommonTextStyle.font14weight400Black,),
                Spacer(),
                Text("See Meaning",style:CommonTextStyle.font14weight400Green,),


              ],
            ),
            Row(
              children: [
                Text("Damask",style:CommonTextStyle.font14weight400Black,),
                Spacer(),
                Text("See Meaning",style:CommonTextStyle.font14weight400Green,),


              ],
            ),

            //-------------------Word E------------------------
            Text("E",style:CommonTextStyle.font32weight600Black,).marginOnly(bottom: 20,top: 20),
            Row(
              children: [
                Text("Eagle",style:CommonTextStyle.font14weight400Black,),
                Spacer(),
                Text("See Meaning",style:CommonTextStyle.font14weight400Green,),


              ],
            ),
            Row(
              children: [
                Text("Earlobe",style:CommonTextStyle.font14weight400Black,),
                Spacer(),
                Text("See Meaning",style:CommonTextStyle.font14weight400Green,),


              ],
            ),
            Row(
              children: [
                Text("Earphones",style:CommonTextStyle.font14weight400Black,),
                Spacer(),
                Text("See Meaning",style:CommonTextStyle.font14weight400Green,),


              ],
            ),
            Row(
              children: [
                Text("Easel",style:CommonTextStyle.font14weight400Black,),
                Spacer(),
                Text("See Meaning",style:CommonTextStyle.font14weight400Green,),


              ],
            ),

            SizedBox(height: 30,),



          ],
        ).marginSymmetric(horizontal: 30),
      ),
      backgroundColor: Colors.white,
      isScrollControlled: true,
    );



  }




}
