import 'package:flutter/material.dart';
import 'package:omega_project/pages/start_screen.dart';
//import 'package:omega_project/pages/main_screen.dart';
import 'package:omega_project/pages/search_screen.dart';
import '../events/loading_screen.dart';
import '../pages/main_screen2.dart';


void main() => runApp(MaterialApp(
  theme: ThemeData(
    primarySwatch: Colors.purple,
  ),
  home: LoadingScreen(),
  /*
  initialRoute: "/",
  routes: {
    "/": (context) => StartScreen(),
    "/main": (context) => MainScreen(),
    "/search": (context) => SearchScreen(),
  },*/
));

//flutter run --no-sound-null-safety