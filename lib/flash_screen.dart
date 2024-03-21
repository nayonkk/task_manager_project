import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_manager_project/homepage.dart';

class flash_screen extends StatefulWidget {
  const flash_screen({super.key});

  @override
  State<flash_screen> createState() => _flash_screenState();
}

class _flash_screenState extends State<flash_screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(
        Duration(
          seconds: 3,
        ), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => homepage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SvgPicture.asset(
            height: double.infinity,
            width: double.infinity,
            'assets/images/background.svg'),
        Center(child: SvgPicture.asset('assets/images/logo.svg')),
      ],
    ));
  }
}
