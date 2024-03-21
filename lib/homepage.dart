import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_manager_project/Email_adress.dart';
// import 'package:task_manager_project/page1.dart';
import 'package:task_manager_project/uiHelper.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Get Started with',
            style: TextStyle(fontSize: 30),
          ),
          uiHelper.customTextfield('Email', false, email),
          uiHelper.customTextfield('Password', true, password),
          uiHelper.customButtom(() {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => page_1()));
          }, 45, 350, Colors.green, Icons.arrow_circle_right_rounded),
          SizedBox(
            height: 30,
          ),
          Column(
            children: [
              Text(
                'Forget password?',
                style: TextStyle(fontSize: 15, color: Colors.black),
              ),
              Wrap(
                children: [
                  Text(
                    'Dont have account?',
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  Text(
                    'Sign in',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
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
