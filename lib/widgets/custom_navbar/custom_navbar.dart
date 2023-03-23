import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/app_routes.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentindex = 2;

  void changeTabIndex(int index) {
    currentindex = index;

    if (index == currentindex) {
      // navigationQueue.removeWhere((element) => element == index);
      setState(() {
        currentindex = index;
      });
    }

    setState(() {});
    if (currentindex == 0) {
      Get.toNamed(Routes.dashboardScreen);
    } else if (currentindex == 1) {
      Get.toNamed(Routes.profileScreen);
    } else if (currentindex == 2) {
      Get.toNamed(Routes.chatScreen);
    } else if (currentindex == 3) {
    } else if (currentindex == 4) {
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[

        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Colors.black,
          ),
          backgroundColor: Color.fromRGBO(27, 29, 40, 1),
        ),

        BottomNavigationBarItem(
          icon: Icon(
            Icons.person_outline,
            size: 25.0,
            color: Colors.black,
          ),
          backgroundColor: Color.fromRGBO(27, 29, 40, 1),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.message_outlined,
            size: 25.0,
            color: Colors.black,
          ),
          backgroundColor: Color.fromRGBO(27, 29, 40, 1),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            color: Colors.black,
          ),
          label: 'My Services',
          backgroundColor: Color.fromRGBO(27, 29, 40, 1),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.supervisor_account,
            color: Colors.black,
          ),
          label: 'Account',
          backgroundColor: Color.fromRGBO(27, 29, 40, 1),
        ),
      ],
      currentIndex: 2,
      selectedItemColor: const Color(0xfff8aa16),
      selectedFontSize: 12.0,
      selectedLabelStyle: const TextStyle(
        color: Colors.yellow,
      ),
      backgroundColor: Colors.white,
      unselectedItemColor: const Color(0xffD3D3D3),
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      onTap: changeTabIndex,
    );
  }
}
