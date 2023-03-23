import 'package:awesome_calendar/awesome_calendar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CalendarController extends GetxController{



    DateTime initialDate = DateTime.now();

    DateTime? singleSelect;
    DateTime embeddedCalendar = DateTime.now();
    List<DateTime>? multiSelect;
    List<DateTime>? rangeSelect;
    List<DateTime>? multiOrRangeSelect;









Future<void> singleSelectPicker(BuildContext context) async {
  final DateTime? picked = await showDialog<DateTime>(
    context: context,
    builder: (BuildContext context) {
      return const AwesomeCalendarDialog(
        selectionMode: SelectionMode.single,
      );
    },
  );
  if (picked != null) {
      singleSelect = picked;
      update();
  }
}

Future<void> multiSelectPicker(BuildContext context) async {
  final List<DateTime>? picked = await showDialog<List<DateTime>>(
    context: context,
    builder: (BuildContext context) {
      return const AwesomeCalendarDialog(
        selectionMode: SelectionMode.multi,
      );
    },
  );
  if (picked != null) {
      multiSelect = picked;
      update();
  }
}

Future<void> rangeSelectPicker(BuildContext context) async {
  final List<DateTime>? picked = await showDialog<List<DateTime>>(
    context: context,
    builder: (BuildContext context) {
      return const AwesomeCalendarDialog(
        selectionMode: SelectionMode.range,
      );
    },
  );
  if (picked != null) {
      rangeSelect = picked;
      update();
  }
}

Future<void> multiOrRangeSelectPicker(BuildContext context) async {
  final List<DateTime>? picked = await showDialog<List<DateTime>>(
    context: context,
    builder: (BuildContext context) {
      return const AwesomeCalendarDialog(
        selectionMode: SelectionMode.multi,
        canToggleRangeSelection: true,
      );
    },
  );
  if (picked != null) {
      multiOrRangeSelect = picked;
      update();
  }
}

Future<void> pickerWithTitle(BuildContext context) async {
  await showDialog<DateTime>(
    context: context,
    builder: (BuildContext context) {
      return const AwesomeCalendarDialog(
        selectionMode: SelectionMode.single,
        title: Padding(
          padding: EdgeInsets.all(16),
          child: Text('This is a custom title'),
        ),
      );
    },
  );
}

Future<void> pickerWithCustomDateRange(BuildContext context) async {
  await showDialog<DateTime>(
    context: context,
    builder: (BuildContext context) {
      return AwesomeCalendarDialog(
        selectionMode: SelectionMode.single,
        startDate: DateTime(2022),
        endDate: DateTime(2022, 12),
      );
    },
  );
}
}







