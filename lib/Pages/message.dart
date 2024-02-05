import 'package:flutter/material.dart';

class Calendar extends StatefulWidget{
  const Calendar({super.key});

  @override
  CalendarState createState() => CalendarState();
}
class CalendarState extends State<Calendar>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
       appBar: AppBar(
         surfaceTintColor: Colors.white,
         elevation: 3,
         shadowColor: Colors.black,
         leading: IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back_ios_rounded,color: Colors.black,)),
         title: const Text("Message",style: TextStyle(
           color: Colors.black,
           fontSize: 20,
           fontFamily: "arial"
         ),),
         centerTitle: true,
       ),
    );
  }
}