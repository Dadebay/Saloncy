import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:test_app/app/constants/constants.dart';

class MiniAdminVideosView extends StatelessWidget {
  const MiniAdminVideosView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        backgroundColor: kPrimaryColor,
        shape: const RoundedRectangleBorder(borderRadius: borderRadius20),
        extendedPadding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
        label: Row(
          children: const [
            Icon(
              Iconsax.add_circle,
              color: Colors.white,
            ),
            Padding(
              padding: EdgeInsets.only(left: 8),
              child: Text(
                "Add Video",
                style: TextStyle(color: Colors.white, fontFamily: gilroySemiBold, fontSize: 18),
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('MiniAdminVideosView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'MiniAdminVideosView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
