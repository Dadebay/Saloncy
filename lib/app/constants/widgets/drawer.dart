import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';

import '../buttons/drawer_button.dart';
import '../constants.dart';
import 'log_out_widget.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xff8909f5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 30, top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Image.asset(
                      'assets/image/user.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Text(
                    'Anita Ojieh',
                    style: TextStyle(color: Colors.white, fontFamily: gilroySemiBold, fontSize: 20),
                  )
                ],
              ),
            ),
          ),
          DrawerButton(
            coming: false,
            title: 'Profile',
            iconData: Iconsax.profile_circle,
            onTap: () {},
          ),
          DrawerButton(
            coming: false,
            title: 'Portfolio',
            iconData: Iconsax.note_2,
            onTap: () {},
          ),
          DrawerButton(title: 'Payment', coming: false, iconData: Iconsax.card, onTap: () {}),
          DrawerButton(
            coming: true,
            title: 'Investment',
            iconData: Iconsax.chart_2,
            onTap: () {},
          ),
          DrawerButton(
            coming: true,
            title: 'Insurance',
            iconData: IconlyLight.shield_done,
            onTap: () {},
          ),
          DrawerButton(coming: false, title: 'Budgeting', iconData: IconlyLight.discovery, onTap: () {}),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: DrawerButton(
                    coming: false,
                    title: 'Log Out',
                    iconData: Iconsax.export,
                    onTap: () {
                      Get.bottomSheet(const LogOutWudget());
                    }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
