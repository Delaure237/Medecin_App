 import 'package:flutter/material.dart';
import 'package:untitled15/widgets/Doctor.dart';

class Schedule extends StatelessWidget {
 final  Color _cardColor = const Color(0xf0037075);

  const Schedule({super.key});
  @override
  Widget build(BuildContext context) {

    return  Stack(
      children:[
       Padding(
        padding:const  EdgeInsets.fromLTRB(20, 16, 20, 3),
         child: Card(
           shadowColor: Colors.transparent,
           child: Container(
              height: 150,
             width: 600,
             decoration: BoxDecoration(
               color:  _cardColor.withOpacity(0.2),
               borderRadius: BorderRadius.circular(15),
             ),
           ),
         ),
       ),
        Padding(padding: EdgeInsets.fromLTRB(10, 16, 10, 20),
          child: Card(
            shadowColor: Colors.transparent,
             surfaceTintColor: Colors.transparent,
            elevation: 8,
            child: Container(
              width: 400,
              height: 140,
              decoration: BoxDecoration(
                color:   _cardColor.withOpacity(0.5),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ),
          Padding(padding: EdgeInsets.fromLTRB(0, 16, 0, 20),
          child: Card(
            elevation: 16,
            shadowColor: Colors.transparent,

            child:Container(
              height: 130,
              width: 700,

              decoration: BoxDecoration(
                color:   _cardColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 10,left: 0,right: 0),
                child: DoctorSchedule(),
              ),

            )
          ),
        )
      ],
    );
  }

}