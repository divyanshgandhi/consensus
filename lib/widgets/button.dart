import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String title;
  final Color begin;
  final Color end;
  final Color color;
  final Function onTap;

  const Button({
    Key key,
    this.onTap,
    this.title,
    this.begin,
    this.end,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 42.0,
        width: 128.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          gradient: LinearGradient(
            colors: [
              begin,
              end,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Text(
            title.toUpperCase(),
            style: TextStyle(
              fontStyle: FontStyle.normal,
              color: color,
              fontWeight: FontWeight.w400,
              fontSize: 16.0,
            ),
          ),
        ),
      ),
    );
  }
}
