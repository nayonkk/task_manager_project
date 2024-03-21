import 'package:flutter/material.dart';
import 'package:task_manager_project/join_withus.dart';
import 'package:task_manager_project/uiHelper.dart';
import 'package:task_manager_project/uiHelper2.dart';

import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:task_manager_project/Setpassword.dart';
import 'package:task_manager_project/uiHelper.dart';
import 'package:task_manager_project/uiHelper2.dart';

class page_3 extends StatefulWidget {
  const page_3({super.key});

  @override
  State<page_3> createState() => _page_3State();
}

class _page_3State extends State<page_3> {
  TextEditingController email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Set Password',
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
          uiHelper2.customButtom(() {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => join_with_us()));
          }, 45, 350, Colors.green, 'Verify'),

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
