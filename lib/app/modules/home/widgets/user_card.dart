import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/constants.dart';

class UserCard extends StatelessWidget {
  const UserCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 55),
      height: 400,
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(
              width: Get.size.width,
              height: 300,
              margin: const EdgeInsets.only(left: 35, top: 25, right: 10),
              decoration: BoxDecoration(borderRadius: borderRadius30, color: Colors.white, border: Border.all(color: Colors.red)),
            ),
          ),
          Positioned.fill(
            child: Container(
              width: Get.size.width,
              height: 300,
              margin: const EdgeInsets.only(right: 35, bottom: 25, left: 15),
              decoration: BoxDecoration(borderRadius: borderRadius30, color: Colors.amber.shade100),
              child: Stack(
                children: [
                  Positioned.fill(
                      child: ClipRRect(
                    borderRadius: borderRadius30,
                    child: Image.asset(
                      'assets/image/girl_image.png',
                      fit: BoxFit.cover,
                    ),
                  )),
                  Center(
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(color: Colors.white54, shape: BoxShape.circle),
                      child: const Icon(
                        Icons.play_arrow,
                        size: 50,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 15,
                      left: 15,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "CEO, Mrs Oyinye",
                            style: TextStyle(color: Colors.white, fontFamily: gilroySemiBold, fontSize: 20),
                          ),
                          Text(
                            "What is Ardila and it benefits?",
                            style: TextStyle(color: Colors.white, fontFamily: gilroyMedium, fontSize: 16),
                          ),
                        ],
                      ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
