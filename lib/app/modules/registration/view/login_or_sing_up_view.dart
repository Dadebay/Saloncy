import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:test_app/app/constants/buttons/agree_button_view.dart';
import 'package:test_app/app/modules/registration/view/login_view.dart';
import 'package:test_app/app/modules/registration/view/sign_up_view.dart';

import '../../../constants/constants.dart';

class LoginOrSignUpView extends StatelessWidget {
  LoginOrSignUpView({super.key});
  TextEditingController passwordController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  FocusNode focusNode = FocusNode();
  FocusNode focusNode1 = FocusNode();
  @override
  Widget build(BuildContext context) {
    const SystemUiOverlayStyle(statusBarColor: kPrimaryColor, statusBarIconBrightness: Brightness.light);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Image.asset('assets/image/vectors.png'),
            ),
          ),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Welcome Saloncy App',
                textAlign: TextAlign.center,
                style: TextStyle(color: kPrimaryColor2, fontFamily: gilroySemiBold, fontSize: 30),
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                AgreeButton(
                    onTap: () {
                      Get.to(() => LoginView());
                    },
                    name: 'Login',
                    style: true),
                AgreeButton(
                    onTap: () {
                      Get.to(() => SignUpView());
                    },
                    name: 'Sign UP',
                    style: false),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
