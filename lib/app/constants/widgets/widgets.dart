import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/app/constants/constants.dart';

SnackbarController showSnackBar(String title, String subtitle, Color color) {
  if (SnackbarController.isSnackbarBeingShown) {
    SnackbarController.cancelAllSnackbars();
  }
  return Get.snackbar(
    title,
    subtitle,
    snackStyle: SnackStyle.FLOATING,
    titleText: title == ''
        ? const SizedBox.shrink()
        : Text(
            title,
            style: const TextStyle(fontFamily: gilroySemiBold, fontSize: 18, color: Colors.white),
          ),
    messageText: Text(
      subtitle,
      style: const TextStyle(fontFamily: gilroyRegular, fontSize: 16, color: Colors.white),
    ),
    snackPosition: SnackPosition.BOTTOM,
    backgroundColor: color,
    borderRadius: 20.0,
    animationDuration: const Duration(milliseconds: 500),
    margin: const EdgeInsets.all(8),
  );
}

dynamic spinKit() {
  return const Center(
    child: Padding(
      padding: EdgeInsets.all(14.0),
      child: CircularProgressIndicator(
        color: kPrimaryColor,
      ),
    ),
  );
}

Padding orWidget() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 25),
    child: Row(
      children: [
        Expanded(
            child: Divider(
          color: Colors.grey.shade300,
        )),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Text(
            'OR ',
            style: TextStyle(color: Colors.grey, fontFamily: gilroyRegular, fontSize: 14),
          ),
        ),
        Expanded(
            child: Divider(
          color: Colors.grey.shade300,
        ))
      ],
    ),
  );
}
