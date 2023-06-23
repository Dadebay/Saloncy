import 'package:flutter/material.dart';

class MiniAdminHomeView extends StatelessWidget {
  const MiniAdminHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('MiniAdminHomeView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'MiniAdminHomeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
