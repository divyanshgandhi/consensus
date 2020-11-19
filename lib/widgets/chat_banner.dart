import 'package:flutter/material.dart';
import 'package:consensus/widgets/widgets.dart';
import 'package:consensus/assets.dart';

class ChatBanner extends StatelessWidget {
  const ChatBanner({
    Key key,
    @required this.screenSize,
    @required this.name,
  }) : super(key: key);

  final Size screenSize;
  final String name;

  @override
  Widget build(BuildContext context) {
    final String imageUrl = "https://";
    return Container(
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
          child: ChatNavigation(
            name: name,
            image: imageUrl,
          ),
        ),
      ),
    );
  }
}
