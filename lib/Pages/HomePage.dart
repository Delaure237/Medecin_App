
   import 'package:flutter/material.dart';
   import 'package:untitled15/widgets/appbar.dart';
import 'package:untitled15/widgets/bottom_bar.dart';
import 'package:untitled15/widgets/doctor_container.dart';
import 'package:untitled15/widgets/fontManager.dart';
import 'package:untitled15/widgets/scheduleContainer.dart';
import 'package:untitled15/widgets/search.dart';
import 'package:untitled15/Controller/SearchpageController.dart';
//import 'package:emoji_picker_flutter/emoji_flutter_pickert.dart';
   import 'package:untitled15/Pages/PageRecherche.dart';
class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}
class HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: header(context),
    body:Padding(
      padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 16),
        child:SingleChildScrollView(
          scrollDirection: Axis.vertical,

      child: Column(
        children: [
        Align(
          alignment: Alignment.topLeft,
          child: Wrap(
            children: [
              Titre(text: "Hi,withney \u{1F44B} "),

            ],
          )

        ),

        const   SizedBox(height: 16,),

          
          Container(
            height:40,
            width:300,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.1),
              borderRadius: BorderRadius.circular(7),
            ),


            child: searchBar(context),
            ),




          const SizedBox(height: 24,),
           Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Titre(text: "Upcoming Schedule"),
              subtitle(),
            ],
          ),
      Schedule(),
         const  SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Titre(text: "Recommended Specialist"),
              subtitle(),
            ],
          ),
          const SizedBox(height: 20,),
           DoctorContainer(),


        ],
      ),
    ),
    ),

    );
  }
  Widget subtitle(){
    return const Text(
       "View all",
      style: TextStyle(
        fontSize: 12,
        color: Colors.grey,
        fontFamily: "arial"
      ),
      );
}
}

class _SearchController {
}