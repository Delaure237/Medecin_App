import 'package:flutter/material.dart';

 class SharedWidget{
   String text = "";
   Widget textFieldContainer(Widget field) =>  Container(
       height: 56,
     decoration: BoxDecoration(
       color: Colors.white,
         borderRadius: BorderRadius.circular(8.0),
     ), //color: Colors.teal,
       child: Padding(
       padding: EdgeInsets.symmetric(vertical: 10),
       child: field,
     )


   );
 }