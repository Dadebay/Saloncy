import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants.dart';

class DrawerButton extends StatelessWidget {
  const DrawerButton({
    super.key,
    required this.title,
    required this.coming,
    required this.iconData,
    required this.onTap,
  });
  final String title;
  final IconData iconData;
  final bool coming;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.size.width,
      child: ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
              elevation: 0, padding: const EdgeInsets.symmetric(vertical: 20), shadowColor: kPrimaryColor, backgroundColor: kPrimaryColor, disabledBackgroundColor: kPrimaryColor),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Icon(
                  iconData,
                  size: 34,
                  color: Colors.white,
                ),
              ),
              coming
                  ? Expanded(
                      flex: 2,
                      child: Row(
                        children: [
                          Text(
                            title,
                            style: const TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              margin: const EdgeInsets.only(left: 8, right: 8),
                              decoration: BoxDecoration(borderRadius: borderRadius15, border: Border.all(color: Colors.grey, width: 1)),
                              padding: const EdgeInsets.all(4),
                              child: const Text(
                                'Coming',
                                style: TextStyle(color: Colors.white, fontSize: 12, fontFamily: gilroyRegular),
                              ),
                            ),
                          ),
                        ],
                      ))
                  : Expanded(
                      flex: 2,
                      child: Text(
                        title,
                        style: const TextStyle(color: Colors.white, fontSize: 18),
                      )),
            ],
          )),
    );
  }
}
