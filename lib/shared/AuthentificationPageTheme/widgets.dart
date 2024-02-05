import 'package:flutter/material.dart';

 class SharedWidget{
   String text = "";
   Widget textFieldContainer(Widget field) =>  Container(
       height: 56,
     decoration: BoxDecoration(
       color: Colors.white,
         borderRadius: BorderRadius.circular(8.0),
           //color: Colors.teal,

         ),
       /*  boxShadow: [
           BoxShadow(
             color: Colors.teal.withOpacity(0.1),
             blurRadius: 4.0,
             spreadRadius: 2.0,// couleur de l'effet brillant
           ),
         ]*/

     child: Padding(
       padding: EdgeInsets.symmetric(vertical: 10),
       child: field,
     )


   );
 }