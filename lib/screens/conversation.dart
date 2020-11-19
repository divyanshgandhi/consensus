import 'package:flutter/material.dart';
import 'package:consensus/widgets/widgets.dart';
import 'package:consensus/assets.dart';
import 'package:google_fonts/google_fonts.dart';

class Conversation extends StatefulWidget {
  final String name;

  const Conversation({Key key, this.name}) : super(key: key);

  @override
  _ConversationState createState() => _ConversationState(name);
}

class _ConversationState extends State<Conversation> {
  final String name;
  TextEditingController _textController = TextEditingController();

  _ConversationState(this.name);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 120,
            width: screenSize.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Assets.primary,
                  Assets.secondary,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.0),
                child: ChatNavigation(name: name),
              ),
            ),
          ),
          SizedBox(height: 14.0)
        ],
      ),
      bottomNavigationBar:
          InputWidget(screenSize: screenSize, textController: _textController),
    );
  }
}
