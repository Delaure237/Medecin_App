import 'package:flutter/material.dart';
class Titre extends StatelessWidget {
  String  text ;
    Titre({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 14,
        fontFamily: "arial"
      ),
  textAlign: TextAlign.left,
    );
  }
}