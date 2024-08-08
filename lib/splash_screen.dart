import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:untitled1/onboarding.dart';
import 'package:untitled1/signupscreen.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => onboarding() ));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image:  AssetImage('assets/images/Splash.jpg'), fit: BoxFit.cover,
          )
          ),
        ),





          );



  }
}
