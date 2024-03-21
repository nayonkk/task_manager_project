import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:task_manager_project/Setpassword.dart';
import 'package:task_manager_project/uiHelper.dart';
import 'package:task_manager_project/uiHelper2.dart';

class join_with_us extends StatefulWidget {
  const join_with_us({super.key});

  @override
  State<join_with_us> createState() => _join_with_usState();
}

class _join_with_usState extends State<join_with_us> {
  TextEditingController email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Join with us',
            style: TextStyle(fontSize: 30),
          ),
          Text(
            '6 digit verification password sent your mail',
            style: TextStyle(fontSize: 20),
          ),
          // uiHelper.customTextfield('Email', false, email),

          SizedBox(
            height: 30,
          ),
          // uiHelper.customButtom(() {
          //   Navigator.push(
          //       context, MaterialPageRoute(builder: (context) => page_3()));
          // }, 45, 350, Colors.green, Icons.arrow_circle_right_rounded),

          uiHelper.customTextfield('Email', false, email),
          uiHelper2.customButtom(() {}, 45, 350, Colors.green, 'Verify'),

          SizedBox(
            height: 30,
          ),
          Column(
            children: [
              Wrap(
                children: [
                  Text(
                    'Have account?',
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  Text(
                    'Sign in',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Colors.green),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
