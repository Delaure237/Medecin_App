import 'package:flutter/material.dart';
class Titre extends StatelessWidget {
  final String text;
  const Titre( {super.key,required this.text});
  @override
  Widget build(BuildContext context) {
    return  Text(
      text,
      style: const TextStyle(
          fontWeight: FontWeight.bold,
          letterSpacing: -1,
          fontSize: 14.5,
          color: Colors.black,
          fontFamily: "arial"
      ),
    );
  }
}
