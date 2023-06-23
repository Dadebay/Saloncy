import 'package:flutter/material.dart';

class MiniAdminImageView extends StatelessWidget {
  const MiniAdminImageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('MiniAdminImageView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'MiniAdminImageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
