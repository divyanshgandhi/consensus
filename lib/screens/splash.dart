import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../assets.dart';
import 'screens.dart';
import 'package:consensus/widgets/widgets.dart';

class Splash extends StatefulWidget {
  @override
  SplashState createState() => new SplashState();
}

class SplashState extends State<Splash> {
  Future checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool _seen = (prefs.getBool('seen') ?? false);

    if (!_seen) {
      navigateUser();
    } else {
      prefs.setBool('seen', true);
    }
  }

  @override
  void initState() {
    super.initState();
    checkFirstSeen();
  }

  navigateUser() {
    // checking whether user already loggedIn or not
    User user = FirebaseAuth.instance.currentUser;
    if (user == null) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SignupScreen()),
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomeScreen(username: user.displayName),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final Color primary = Assets.primary;
    final Color secondary = Assets.secondary;

    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: screenSize.height,
        width: screenSize.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              primary,
              secondary,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0.0, 172.0, 0, 28.0),
                child: Container(
                  height: 72.0,
                  width: screenSize.width,
                  child: Image.asset(Assets.logo_white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 18.0),
                child: Text(
                  "consensus.",
                  style: GoogleFonts.montserrat(
                      fontSize: 42.0,
                      color: Assets.white,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 72.0),
                child: Text(
                  "The messaging platform built on trust",
                  style: GoogleFonts.roboto(
                      fontSize: 16.0,
                      color: Assets.white,
                      fontWeight: FontWeight.w300),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 18.0),
                child: Text(
                  "Let's get started",
                  style: GoogleFonts.roboto(
                      fontSize: 16.0,
                      color: Assets.white,
                      fontWeight: FontWeight.w300),
                ),
              ),
              RoundButton(
                onTap: () => navigateUser(),
                color: Assets.white,
                icon: Icons.arrow_right_alt,
                iconColor: Assets.primary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
