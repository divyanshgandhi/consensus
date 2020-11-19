import 'package:consensus/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:consensus/assets.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatNavigation extends StatelessWidget {
  const ChatNavigation({
    Key key,
    @required this.name,
    @required this.image,
  }) : super(key: key);

  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Container(
            height: 32.0,
            width: 32.0,
            child: Icon(
              Icons.chevron_left_outlined,
              size: 32.0,
              color: Assets.white,
            ),
          ),
        ),
        SizedBox(width: 10.0),
        Picture(size: 42.0),
        SizedBox(width: 6.0),
        Text(
          name,
          style: GoogleFonts.roboto(
            fontSize: 16.0,
            fontWeight: FontWeight.w400,
            color: Assets.white,
          ),
        ),
        SizedBox(width: 140),
        Container(
          height: 32.0,
          width: 32.0,
          child: Icon(
            Icons.more_vert,
            size: 32.0,
            color: Assets.white,
          ),
        ),
      ],
    );
  }
}
