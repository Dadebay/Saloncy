import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import 'package:inner_drawer/inner_drawer.dart';
import 'package:test_app/app/constants/constants.dart';
import 'package:test_app/app/modules/home/widgets/user_card.dart';

import '../../../constants/widgets/drawer.dart';
import '../widgets/badges.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return InnerDrawer(
        key: _innerDrawerKey,
        onTapClose: true,
        swipe: true,
        colorTransitionChild: kPrimaryColor,
        colorTransitionScaffold: Colors.white,
        backgroundDecoration: const BoxDecoration(color: kPrimaryColor),
        leftChild: const DrawerWidget(),
        scaffold: SafeArea(
          child: Scaffold(
              body: ListView(
            padding: const EdgeInsets.only(top: 25),
            physics: const BouncingScrollPhysics(),
            children: [
              miniAppBAr(),
              Badges(),
              const UserCard(),
            ],
          )),
        ));
  }

  Row miniAppBAr() {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Center(
            child: Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: Image.asset(
                'assets/image/user.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Good Morning ',
                style: TextStyle(color: Colors.grey, fontFamily: gilroyMedium, fontSize: 16),
              ),
              Text(
                'Cadet <Annie>',
                style: TextStyle(color: kPrimaryColor2, fontFamily: gilroyMedium, fontSize: 20),
              )
            ],
          ),
        ),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              IconlyLight.notification,
              color: Colors.grey,
            ))
      ],
    );
  }

  final GlobalKey<InnerDrawerState> _innerDrawerKey = GlobalKey<InnerDrawerState>();

  void _toggle() {
    _innerDrawerKey.currentState!.toggle(direction: InnerDrawerDirection.start);
  }
}
