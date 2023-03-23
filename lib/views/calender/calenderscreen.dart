import 'package:awesome_calendar/awesome_calendar.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:so_teach/controllers/calender/calender_controller.dart';

import '../../widgets/common_textstyle/common_text_style.dart';

class CalenderScreen extends StatefulWidget {
  const CalenderScreen({Key? key}) : super(key: key);

  @override
  State<CalenderScreen> createState() => _CalenderScreenState();
}

class _CalenderScreenState extends State<CalenderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyData(context),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Calender",style: CommonTextStyle.font20weight600Black),
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
    return GetBuilder<CalendarController>(init:CalendarController(),builder:(_){
      return Container(
        height: Get.height,
        width: Get.width,
        color: Colors.white,
        child:   AwesomeCalendarDialog(

          selectionMode: SelectionMode.multi,
          canToggleRangeSelection: true,

      ),


      );


    });



  }
}


class CustomDayTileBuilder extends DayTileBuilder {
  CustomDayTileBuilder();

  @override
  Widget build(BuildContext context, DateTime date,
      void Function(DateTime datetime)? onTap) {
    return DefaultDayTile(
      date: date,
      onTap: onTap,
      selectedDayColor: Colors.cyan,
      currentDayBorderColor: Colors.grey,
    );
  }
}