import 'package:flutter/material.dart';
import 'package:task_manager_project/Pin%20verification.dart';
import 'package:task_manager_project/uiHelper.dart';

class page_1 extends StatefulWidget {
  const page_1({super.key});

  @override
  State<page_1> createState() => _page_1State();
}

class _page_1State extends State<page_1> {
  TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Your Email Adress',
            style: TextStyle(fontSize: 30),
          ),
          Text(
            '6 digit verification password sent your mail',
            style: TextStyle(fontSize: 20),
          ),
          uiHelper.customTextfield('Email', false, email),
          SizedBox(
            height: 30,
          ),
          uiHelper.customButtom(() {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => page_2()));
          }, 45, 350, Colors.green, Icons.arrow_circle_right_rounded),
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
