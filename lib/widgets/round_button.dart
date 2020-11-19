import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final Color color;
  final IconData icon;
  final Color iconColor;
  final Function onTap;

  const RoundButton({
    Key key,
    this.color,
    this.icon,
    this.iconColor,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 64.0,
        height: 64.0,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(32)),
        ),
        child: Icon(
          icon,
          size: 42.0,
          color: iconColor,
        ),
      ),
    );
  }
}
