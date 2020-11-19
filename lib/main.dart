import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:consensus/screens/screens.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'assets.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(new MyApp());
}

var routes = <String, WidgetBuilder>{
  "/signup": (BuildContext context) => SignupScreen(),
  "/home": (BuildContext context) => HomeScreen(),
};

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: routes,
      home: Splash(),
    );
  }
}
