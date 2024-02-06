import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;

    var path = Path()
      ..lineTo(0, height - 140)
      ..quadraticBezierTo(width / 2, height * 1.5, width, height - 140)
      ..lineTo(width, 0)
      ..close();
    //  path.lineTo(0, height - 20);
    // path.quadraticBezierTo(width / 4, height, width / 2, height);

    // path.quadraticBezierTo(3 * width / 4, height, width, height - 20);

    path.lineTo(width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
