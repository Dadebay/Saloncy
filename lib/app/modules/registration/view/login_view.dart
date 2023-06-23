import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:test_app/app/constants/buttons/agree_button_view.dart';
import 'package:test_app/app/constants/buttons/custom_text_field.dart';
import 'package:test_app/app/modules/registration/view/sign_up_view.dart';

import '../../../constants/constants.dart';
import '../../../mini_admin_modules/min_admin_home/mini_admin_bottom_nav_bar.dart';
import '../../home/views/bottom_nav_bar.dart';
import '../../user_profil/views/contact_us_view.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});
  TextEditingController passwordController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  FocusNode focusNode = FocusNode();
  FocusNode focusNode1 = FocusNode();
  @override
  Widget build(BuildContext context) {
    const SystemUiOverlayStyle(statusBarColor: kPrimaryColor, statusBarIconBrightness: Brightness.light);

    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Stack(
              children: [
                Positioned.fill(
                    child: Image.asset(
                  'assets/image/background.png',
                  height: 200,
                  fit: BoxFit.cover,
                  width: Get.size.width,
                )),
                Center(
                  child: Image.asset(
                    'assets/image/logo_name.png',
                    width: 200,
                    height: 200,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 5,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 15,
                  right: 15,
                  child: Container(
                    decoration: const BoxDecoration(color: Colors.white54, borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))),
                    height: 100,
                  ),
                ),
                mainBody(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container mainBody() {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
        children: [
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              'Welcome !',
              style: TextStyle(color: kPrimaryColor2, fontFamily: gilroySemiBold, fontSize: 30),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15, bottom: 35),
            child: Text(
              'Here’s how to Log in to access your account',
              style: TextStyle(color: kPrimaryColor2, fontFamily: gilroyRegular, fontSize: 14),
            ),
          ),
          CustomTextField(icon: IconlyLight.message, labelName: 'User name ', controller: userNameController, focusNode: focusNode, requestfocusNode: focusNode1, isNumber: false, unFocus: false),
          const SizedBox(
            height: 8,
          ),
          CustomTextField(icon: IconlyLight.lock, labelName: 'Password', controller: passwordController, focusNode: focusNode1, requestfocusNode: focusNode, isNumber: false, unFocus: false),
          GestureDetector(
            onTap: () {
              Get.to(() => const ContactUsView());
            },
            child: Container(
              width: Get.size.width,
              alignment: Alignment.centerRight,
              margin: const EdgeInsets.only(top: 8, right: 8, left: 8, bottom: 50),
              child: const Text(
                'Forgot Password?',
                style: TextStyle(color: kPrimaryColor2, fontFamily: gilroyMedium, fontSize: 14),
              ),
            ),
          ),
          AgreeButton(
              onTap: () {
                if (userNameController.text == 'admin' && passwordController.text == 'admin') {
                  Get.to(() => const MiniAdminBottomNavBar());
                } else {
                  Get.to(() => const BottomNavBar());
                }
              },
              name: 'Log In',
              style: false),
          const SizedBox(
            height: 8,
          ),
          GestureDetector(
            onTap: () {
              Get.to(() => SignUpView());
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'New user?  ',
                  style: TextStyle(color: Colors.grey, fontFamily: gilroyRegular, fontSize: 14),
                ),
                Text(
                  'Create Account',
                  style: TextStyle(color: kPrimaryColor2, fontFamily: gilroyRegular, fontSize: 14),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
