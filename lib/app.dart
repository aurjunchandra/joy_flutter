import 'package:flutter/material.dart';
import 'package:joy_flutter/button/button.dart';
import 'package:joy_flutter/module_11_Responsive/module_11_class_2_packageuse.dart';
import 'package:joy_flutter/module_11_Responsive/module_11_class_3_todo.dart';
import 'package:joy_flutter/module_11_Responsive/ui_design_assignment.dart';
import 'package:joy_flutter/module_12_stateconcept/module_12_class_1_stateless_stateful.dart';
import 'package:joy_flutter/module_12_stateconcept/module_12_class_3_calculator.dart';
import 'package:joy_flutter/module_8/class3_2GridV.dart';
import 'package:joy_flutter/module_8/class3_gridview.dart';
import 'package:joy_flutter/module_8/class_2_loginpage.dart';
import 'package:joy_flutter/module_9/module_9_class_1_themetest.dart';
import 'package:joy_flutter/module_9/module_9_class_2_listview.dart';
import 'package:joy_flutter/module_9/module_9_class_3_ownwidget.dart';
import 'home.dart';
import 'package:joy_flutter/module_8/module_8_class1_input.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'module_11_Responsive/module_11_class_1_responsive_1.dart';
import 'module_11_Responsive/module_11_class_3_Responsive.dart';
import 'module_13_api/crud/crud.dart';
import 'module_9/module_9_class_2_stack.dart';
import 'module_9/module_9_class_3.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        // Use builder only if you need to use library outside ScreenUtilInit context
        builder: (_, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              brightness: Brightness.light,
              // primaryColor: Colors.deepPurpleAccent,
              //primarySwatch: Colors.deepPurple,
              //scaffoldBackgroundColor: Colors.green.shade50,
              elevatedButtonTheme: ElevatedButtonThemeData(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      )
                  )
              ),
              inputDecorationTheme: InputDecorationTheme(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey, width: 2)
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.orange, width: 2),
                ),
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
              ),
              textTheme: TextTheme(
                  headlineMedium: TextStyle(
                    // fontSize: 20,
                      fontWeight: FontWeight.bold)
              ),
            ),
            darkTheme: ThemeData.dark().copyWith(
                primaryColor: Colors.purple,
                elevatedButtonTheme: ElevatedButtonThemeData(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    )
                )
            ),
            //themeMode: ThemeMode.light,
            themeMode: ThemeMode.system,
            title: 'Flutter Batch-13 ',
            home: Calculator(),
            initialRoute: 'crud',
            routes: {
              'uidesign':(context)=>UiDesignAssignment(),
              'ownwidget':(context)=>OwnWidget(),
              'responsive':(context)=>Res(),
              'respkg': (context)=> ResPkg(),
              'todo':(context)=> Todo(),
              'stateclass':(context)=>StateClass(),
              'calculator':(context)=>Calculator(),
              'apicall':(context)=>Crud(),
              'crud':(context)=>Crud(),
            },
          );
        }
    );
    //Widget materialApp() {}
  }
}
