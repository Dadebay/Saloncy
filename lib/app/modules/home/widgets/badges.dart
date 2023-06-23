import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/constants.dart';

class Badges extends StatelessWidget {
  Badges({super.key});
  List names2 = ['Rank', 'Badges', 'Referrals'];
  List names = ['Cadet', 'Beginner', 'Refer & Earn'];
  List subtitle = ['Move up your Rank by completing transactions', 'Move up your Badge by completing transactions', 'Invite using your Kode Hex.'];
  List images = [
    'assets/image/Group2.png',
    'assets/image/Group1.png',
    'assets/image/Group3.png',
  ];
  List color = [
    const Color(0xfffef7f8),
    const Color(0xfff9f9f9),
    const Color(0xfff0f0ff),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      margin: const EdgeInsets.symmetric(vertical: 60),
      child: ListView.builder(
        itemCount: 3,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.only(left: 15, right: index == 0 ? 0 : 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  names2[index],
                  style: const TextStyle(color: kPrimaryColor2, fontFamily: gilroySemiBold, fontSize: 18),
                ),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: Container(
                      width: Get.size.width / 1.2,
                      decoration: BoxDecoration(
                        color: color[index],
                        gradient: LinearGradient(begin: Alignment.bottomRight, stops: const [0.0, 1.0], tileMode: TileMode.clamp, colors: [Colors.grey.shade100, color[index]]),
                        borderRadius: borderRadius20,
                      ),
                      child: Stack(
                        children: [
                          index == 2
                              ? Positioned(
                                  right: 0,
                                  bottom: 0,
                                  child: ClipRRect(
                                    borderRadius: borderRadius30,
                                    child: Image.asset(
                                      images[index],
                                      width: 170,
                                      // height: 200,
                                    ),
                                  ))
                              : Positioned(
                                  right: 0,
                                  top: index == 0 ? 25 : 0,
                                  bottom: 0,
                                  child: Container(
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child: Image.asset(
                                        images[index],
                                        width: 170,
                                        // height: 200,
                                      ),
                                    ),
                                  )),
                          Positioned.fill(child: Image.asset('assets/image/backImage.png')),
                          Positioned.fill(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 55, top: 30, left: 15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    names[index],
                                    textAlign: TextAlign.left,
                                    style: TextStyle(color: index == 0 ? purpleColor : kPrimaryColor2, fontFamily: gilroyBold, fontSize: 22),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10, right: 55),
                                    child: Text(
                                      subtitle[index],
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(color: kPrimaryColor2, fontFamily: gilroyMedium, fontSize: 12),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
