import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';
import 'package:test_app/app/mini_admin_modules/min_admin_home/mini_admin_home_view.dart';
import 'package:test_app/app/mini_admin_modules/mini_admin_image/mini_admin_image_view.dart';
import 'package:test_app/app/mini_admin_modules/mini_admin_videos/mini_admin_videos_view.dart';

import '../../constants/constants.dart';

class MiniAdminBottomNavBar extends StatefulWidget {
  const MiniAdminBottomNavBar({super.key});

  @override
  State<MiniAdminBottomNavBar> createState() => _MiniAdminBottomNavBarState();
}

class _MiniAdminBottomNavBarState extends State<MiniAdminBottomNavBar> {
  int selectedIndex = 0;

  List page = [
    const MiniAdminHomeView(),
    const MiniAdminImageView(),
    const MiniAdminVideosView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          iconSize: 22,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedItemColor: kPrimaryColor,
          useLegacyColorScheme: true,
          selectedLabelStyle: const TextStyle(fontFamily: gilroySemiBold, fontSize: 13),
          unselectedLabelStyle: const TextStyle(fontFamily: gilroyMedium, fontSize: 12),
          currentIndex: selectedIndex,
          onTap: (index) async {
            setState(() {
              selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: const Icon(IconlyLight.home),
              activeIcon: const Icon(IconlyBold.home),
              label: 'Home'.tr,
              tooltip: 'Home'.tr,
            ),
            BottomNavigationBarItem(
              icon: const Icon(IconlyLight.image),
              activeIcon: const Icon(IconlyBold.image),
              label: 'Image'.tr,
              tooltip: 'Image'.tr,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Iconsax.video_circle),
              activeIcon: const Icon(Iconsax.video_circle5),
              label: 'Videos'.tr,
              tooltip: 'Videos'.tr,
            ),
          ],
        ),
        body: Center(
          child: page[selectedIndex],
        ));
  }
}
