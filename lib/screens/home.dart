import 'package:consensus/screens/screens.dart';
import 'package:consensus/widgets/chat.dart';
import 'package:flutter/material.dart';
import 'package:consensus/assets.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  final String username;

  const HomeScreen({Key key, this.username}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState(username);
}

class _HomeScreenState extends State<HomeScreen> {
  Color primary = Assets.primary;
  Color secondary = Assets.secondary;
  final String username;
  Size screenSize;

  _HomeScreenState(this.username);

  openConversation(name) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Conversation(name: name)),
    );
  }

  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 120,
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
            child: Stack(
              children: [
                Positioned(
                  left: 18.0,
                  bottom: 24.0,
                  child: Text(
                    "consensus",
                    style: GoogleFonts.montserrat(
                      fontSize: 36.0,
                      fontWeight: FontWeight.w600,
                      color: Assets.white,
                    ),
                  ),
                ),
                Positioned(
                  right: 18.0,
                  bottom: 26.0,
                  child: Icon(
                    Icons.menu,
                    size: 32.0,
                    color: Assets.white,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 28.0),
          Chat(
            onTap: () => openConversation("Dave Matthews"),
            screenSize: screenSize,
            name: "Dave Matthews",
            content: "How are you?",
          ),
          Chat(
            screenSize: screenSize,
            name: "Nina Matthews",
            content: "Hey!",
          ),
        ],
      ),
    );
  }
}
