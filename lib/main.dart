import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:puzzle_riddle_apti_app/Login/login.dart';
import 'package:puzzle_riddle_apti_app/menu_bar/sidebar_layout.dart';
import 'package:puzzle_riddle_apti_app/screens/loading_screen.dart';
import 'package:puzzle_riddle_apti_app/useful_compenents/global_variables.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      title: 'Quiz App',
      debugShowCheckedModeBanner: false,
      // theme: ThemeData.dark(),
      home: LoadingScreen(),
    );
  }
}
