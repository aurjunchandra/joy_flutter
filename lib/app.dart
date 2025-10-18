import 'package:flutter/material.dart';
import 'package:joy_flutter/button/button.dart';
import 'package:joy_flutter/module_8/class3_2GridV.dart';
import 'package:joy_flutter/module_8/class3_gridview.dart';
import 'package:joy_flutter/module_8/class_2_loginpage.dart';
import 'home.dart';
import 'package:joy_flutter/module_8/module_8_class1_input.dart';



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Flutter Batch-13 ',
      home: GridV(),
    );
  }

  //Widget materialApp() {}
}
