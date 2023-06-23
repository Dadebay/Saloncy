// // ignore_for_file: file_names, must_be_immutable, always_use_package_imports, avoid_void_async, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';
import 'package:test_app/app/modules/category/views/category_view.dart';
import 'package:test_app/app/modules/explore/views/explore_view.dart';
import 'package:test_app/app/modules/videos/views/videos_view.dart';

import '../../../constants/constants.dart';
import '../../user_profil/views/user_profil_view.dart';
import 'home_view.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex = 0;

  List page = [
    const HomeView(),
    const CategoryView(),
    const ExploreView(),
    const VideosView(),
    const UserProfilView(),
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
              icon: const Icon(IconlyLight.category),
              activeIcon: const Icon(IconlyBold.category),
              label: 'Category'.tr,
              tooltip: 'Category'.tr,
            ),
            BottomNavigationBarItem(
              icon: const Icon(IconlyLight.discovery),
              activeIcon: const Icon(IconlyBold.discovery),
              label: 'Explore'.tr,
              tooltip: 'Explore'.tr,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Iconsax.video_circle),
              activeIcon: const Icon(Iconsax.video_circle5),
              label: 'Videos'.tr,
              tooltip: 'Videos'.tr,
            ),
            BottomNavigationBarItem(
              icon: const Icon(IconlyLight.profile),
              activeIcon: const Icon(IconlyBold.profile),
              label: 'Profil'.tr,
              tooltip: 'Profil'.tr,
            ),
          ],
        ),
        body: Center(
          child: page[selectedIndex],
        ));
  }
}
