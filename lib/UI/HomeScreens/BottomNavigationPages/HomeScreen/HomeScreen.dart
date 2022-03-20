
import 'package:flutter/material.dart';

import 'home_screen_widgets/Categories.dart';
import 'home_screen_widgets/Favourties.dart';
import 'home_screen_widgets/grill_connection.dart';
import 'home_screen_widgets/grill_party.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.grey.shade900,
        centerTitle: true,
        title: const Text(
          "Home Screen",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 50),
        scrollDirection: Axis.vertical,
        physics: const ScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Categories(),
            GrillConnection(),
            Favorites(),
            GrillParty(),
          ],
        ),
      ),
    );
  }
}
