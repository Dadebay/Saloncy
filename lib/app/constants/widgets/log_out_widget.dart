import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/app/constants/constants.dart';
import 'package:test_app/app/constants/widgets/widgets.dart';

class LogOutWudget extends StatelessWidget {
  const LogOutWudget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(color: Colors.white, borderRadius: borderRadius30),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 25),
            child: Text(
              "Are you sure want to LOG OUT ??",
              style: TextStyle(color: kPrimaryColor, fontFamily: gilroyRegular, fontSize: 18),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Get.back();
                    showSnackBar('Log out', 'You logged out ', kPrimaryColor);
                  },
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                      shape: const RoundedRectangleBorder(borderRadius: borderRadius10),
                      backgroundColor: const Color(0xfffce4eb)),
                  child: const Text(
                    "Confirm",
                    style: TextStyle(color: Colors.red, fontFamily: gilroyRegular, fontSize: 16),
                  )),
              ElevatedButton(
                  onPressed: () {
                    Get.back();
                  },
                  style: ElevatedButton.styleFrom(elevation: 0, backgroundColor: Colors.white),
                  child: const Text(
                    "No, Cancel",
                    style: TextStyle(color: Colors.black, fontFamily: gilroyRegular, fontSize: 16),
                  )),
            ],
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
