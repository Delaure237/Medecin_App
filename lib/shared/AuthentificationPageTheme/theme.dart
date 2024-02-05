import 'package:flutter/material.dart';
class FormTheme{
  OutlineInputBorder inputTheme = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(20)),


  );
  InputDecoration inputDecorations = InputDecoration(

    contentPadding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
    filled: true,
    hintStyle: TextStyle(
      color: Colors.grey[400],
      fontSize: 16,
    ),
    suffixIconColor: Colors.teal,
    prefixIconColor: Colors.teal,

    fillColor: Colors.white,
     border:OutlineInputBorder(
       borderRadius: BorderRadius.circular(10),
       borderSide: BorderSide.none,
     ),


   /*focusedBorder: OutlineInputBorder(
   borderSide: const  BorderSide(
    color: Colors.teal,
    width: 1.5,
  ),
  borderRadius: BorderRadius.circular(10),*/


  );
  /*button style */

TextStyle buttonTextStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontSize: 28,

);
}