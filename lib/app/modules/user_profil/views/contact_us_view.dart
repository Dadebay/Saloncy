import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ContactUsView extends GetView {
  const ContactUsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ContactUsView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ContactUsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
