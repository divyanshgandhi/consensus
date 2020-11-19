import 'dart:ffi';

import 'package:consensus/assets.dart';
import 'package:flutter/material.dart';

class Picture extends StatelessWidget {
  final double size;

  const Picture({Key key, this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(24)),
        color: Colors.black,
      ),
    );
  }
}
