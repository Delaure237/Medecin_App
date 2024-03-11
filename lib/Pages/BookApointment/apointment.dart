// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:untitled15/compoments/my_button.dart';
import 'package:untitled15/constant.dart';

class Apointment extends StatelessWidget {
  const Apointment({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    const bool isSelected = false;
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            children: [
             const  Text("17 Jan 2024"),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child:  ElevatedButton(onPressed: (){}, child: const ListTile(
                    title: Text("morning"),

                  )
                  ), ),
                   Expanded(
                     flex: 2,
                     child: ElevatedButton(onPressed: (){}, child: const ListTile(
                     title: Text("Evening"),
                   
                   )
                   ),)


                ],
              ),
              Row(
                children: [
                  Container(height: 150,color: primaryColor,width: double.infinity,)
                ],
              ),
              Text("Fee's informations"),
              MyButton(onTap: (){}, text: "Continue"),

            ],
          ),
        ),
      ),
    );
  }
}
