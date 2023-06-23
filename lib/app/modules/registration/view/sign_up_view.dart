import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';
import 'package:test_app/app/constants/buttons/agree_button_view.dart';
import 'package:test_app/app/constants/buttons/custom_text_field.dart';

import '../../../constants/constants.dart';

class SignUpView extends StatelessWidget {
  SignUpView({super.key});
  TextEditingController textEditingController1 = TextEditingController();
  TextEditingController textEditingController2 = TextEditingController();
  TextEditingController textEditingController3 = TextEditingController();
  TextEditingController textEditingController4 = TextEditingController();
  TextEditingController textEditingController5 = TextEditingController();
  TextEditingController textEditingController6 = TextEditingController();
  FocusNode focusNode = FocusNode();
  FocusNode focusNode1 = FocusNode();
  FocusNode focusNode2 = FocusNode();
  FocusNode focusNode3 = FocusNode();
  FocusNode focusNode4 = FocusNode();
  FocusNode focusNode5 = FocusNode();
  @override
  Widget build(BuildContext context) {
    const SystemUiOverlayStyle(statusBarColor: kPrimaryColor, statusBarIconBrightness: Brightness.light);

    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 25, bottom: 15, left: 15),
              child: Text(
                'Complete your\nprofile',
                style: TextStyle(color: kPrimaryColor2, fontFamily: gilroySemiBold, fontSize: 34),
              ),
            ),
            CustomTextField(icon: Iconsax.code, labelName: 'Username ', controller: textEditingController1, focusNode: focusNode, requestfocusNode: focusNode1, isNumber: false, unFocus: false),
            CustomTextField(icon: Iconsax.user, labelName: 'First Name ', controller: textEditingController2, focusNode: focusNode1, requestfocusNode: focusNode2, isNumber: false, unFocus: false),
            CustomTextField(icon: Iconsax.user, labelName: 'Last Name ', controller: textEditingController3, focusNode: focusNode2, requestfocusNode: focusNode3, isNumber: false, unFocus: false),
            CustomTextField(icon: Iconsax.mobile, labelName: 'Phone Number ', controller: textEditingController4, focusNode: focusNode3, requestfocusNode: focusNode4, isNumber: false, unFocus: false),
            CustomTextField(
                icon: Iconsax.profile_2user,
                labelName: 'Invite code (optional) ',
                controller: textEditingController5,
                focusNode: focusNode4,
                requestfocusNode: focusNode5,
                isNumber: false,
                unFocus: false),
            CustomTextField(icon: IconlyLight.lock, labelName: 'Password ', controller: textEditingController6, focusNode: focusNode5, requestfocusNode: focusNode, isNumber: false, unFocus: false),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    'By Signing Up , You’re agreeing to our  ',
                    style: TextStyle(color: Colors.grey, fontFamily: gilroyRegular, fontSize: 14),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Terms and Conditions and Privacy Policy',
                    style: TextStyle(color: kPrimaryColor, fontFamily: gilroyRegular, fontSize: 14),
                  ),
                ],
              ),
            ),
            AgreeButton(onTap: () {}, name: "Create Account", style: false)
          ],
        ));
  }
}
