// ignore: file_names
import 'package:flutter/material.dart';

class AvatarImage extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const AvatarImage(this.assets,
      {this.width = 60,
      this.height = 60,
      this.bgColor,
      this.borderWidth = 0,
      this.radius = 50,
      this.borderColor});

  final String assets;
  final double width;
  final double height;
  final double borderWidth;
  final Color? borderColor;
  final Color? bgColor;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(
            color: borderColor ?? Theme.of(context).cardColor,
            width: borderWidth),
        color: bgColor,
        borderRadius: BorderRadius.circular(radius),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 1,
            offset: const Offset(1, 1),
          ),
        ],
        image: const DecorationImage(
            image: AssetImage('Imagespath'), fit: BoxFit.cover),
      ),
    );
  }
}
