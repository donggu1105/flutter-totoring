import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dao_main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(const Duration(seconds: 2),(){
      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)
      =>const Dao_Main()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: SafeArea(
        child: Center(
          child: Image(
            width: Get.width,
            height: Get.height,
            image: const AssetImage('image/logo.png'),
          ),
        ),
      ),
    );
  }
}
