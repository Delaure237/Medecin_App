

  import 'package:flutter/material.dart';
  import 'package:badges/badges.dart' as badges;


  AppBar header(context){
  return AppBar(
    elevation: 0.0,
    surfaceTintColor: Colors.white,
    toolbarHeight: 70,
     title:Padding(
       padding: EdgeInsets.only(top: 40,left: 0,bottom: 20),
     child: Column(
       children: [
        Container(
           height: 40,
           width: 40,
           decoration: BoxDecoration(
             color: Colors.red,
               borderRadius: BorderRadius.circular(5),
               image:const  DecorationImage(image: AssetImage("lib/assets/images/profiles/with.png"),fit: BoxFit.fill)

           ),
         ),
         SizedBox(height: 3,),

       ],
     ),
     ),
    actions: [
     Stack(
       children: [
         IconButton(
           icon:const  Icon(Icons.notifications,size: 30,color: Colors.black,),
           onPressed: () {},

         ),
     Positioned(
       top: 15,
       right: 10,
    child: Container(
       height: 10,
     width: 10,
     decoration: BoxDecoration(
    border: Border.all(
      color: Colors.white,
  ),
      color: Colors.red,
    shape: BoxShape.circle,
  ),
     ),
    )
    ]
    )
    ]
  );
}