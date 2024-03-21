import 'package:flutter/material.dart';
import 'package:task_manager_project/flash_screen.dart';
import 'package:task_manager_project/homepage.dart';

void main() {
  runApp(const MyApp());
}
class MyApp  extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
debugShowCheckedModeBanner: false,
 home: flash_screen(),

    );
  }
}