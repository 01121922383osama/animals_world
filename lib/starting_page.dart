// ignore_for_file: library_private_types_in_public_api

import 'dart:async';
import 'package:full_screen_image_null_safe/full_screen_image_null_safe.dart';
import 'package:animals_world/screens/login_page.dart';
import 'package:flutter/material.dart';

class StartingPage extends StatefulWidget {
  const StartingPage({Key? key}) : super(key: key);

  @override
  _StartingPageState createState() => _StartingPageState();
}

class _StartingPageState extends State<StartingPage> {
  // @override
  // void initState() {
  //   super.initState();
  //   Timer(const Duration(seconds: 2), () {
  //     Navigator.pushReplacement(
  //       context,
  //       MaterialPageRoute(builder: (context) => LoginScreen()),
  //     );
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Color.fromRGBO(10, 171, 152, 8), Colors.white],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.white.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(10, 10),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: FullScreenWidget(
                  child: Image.asset(
                    'assets/StartingScreen.png',
                    // fit: BoxFit.contain,
                    // height: MediaQuery.of(context).size.height,
                    // width: MediaQuery.of(context).size.width,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
