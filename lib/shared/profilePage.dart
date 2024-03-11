
// ignore_for_file: dead_code, unused_local_variable

  import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled15/Models/specialist.dart';
import 'package:untitled15/Pages/BookApointment/apointment.dart';
import 'package:untitled15/compoments/my_button.dart';
import 'package:untitled15/compoments/title.dart';
import 'package:untitled15/constant.dart';
class ProfilePage extends StatefulWidget {
  final Specialist doctor;
  const ProfilePage({super.key,required this.doctor});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    bool isSelected = false;
    bool isImageExpanded = false;
    final ktabs = <Tab>[
      const  Tab(text: "About",),
     const  Tab(text: "Review",),
     const  Tab(text: "Rating",),
    ];
    final kTabPages = <Widget>[
    SingleChildScrollView(
    child: Padding(
    padding: const EdgeInsets.symmetric(
    horizontal: defaultPadding),
    child: Column(

    children: [
    const SizedBox(height: 12,),
    Container(
    padding: const EdgeInsets.all(8),
    width: double.infinity,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    color: secondaryColor,

    ),
    child: const Text(
    "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nesciunt alias magni obcaecati quo nobis ipsam laborum suscipit asperiores vitae aut autem facilis  ssumenda quod, rerum recusandae numquam consequ untur!"
    , maxLines: 6,
    style: TextStyle(
    fontSize: 11,
    ),

    ),
    ),
    const SizedBox(height: 12,),
    Container(
    height: 120,
    width: double.infinity,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    color: secondaryColor,
    image: const DecorationImage(image: AssetImage(
    "lib/assets/carte-localisation-ville_97886-2805.jpg"),
    fit: BoxFit.fitWidth),
    ),
    ),
    //const SizedBox(height: 10,),
    ListTile(
      minVerticalPadding: 6,
    title: Title( "Working Time"),
    subtitle:const  Text("Mon-Fri,03:00 PM - 06:00PM",
    style: TextStyle(
    color: Colors.grey, fontSize: 12),),

    ),

    MyButton(onTap: () {
    Navigator.pushReplacement(context,
    MaterialPageRoute(
    builder: (context) => const Apointment()));
    }, text: "Book an Appointment"),
    ]
    )
    ),
    ),
      const Center(child: Icon(Icons.emoji_events_rounded,color: primaryColor,),),
      const Center(child: Icon(Icons.emoji_people,color: primaryColor,),)
    ];
    return  DefaultTabController(
           initialIndex: 0,
        length:ktabs.length,
        child: Scaffold(

        body: SafeArea(
        child:CustomScrollView(
          physics:const  NeverScrollableScrollPhysics(),
          slivers: [
            SliverAppBar(
               title: Row(
                   children :[
                     GestureDetector(
                       onTap:(){
                         Navigator.pop(context);
                       },
                       child:Container(
                         height: 40,
                         width: 40,
                         decoration: BoxDecoration(
                           color: Colors.black.withOpacity(0.1),
                           borderRadius: BorderRadius.circular(10),
                         ),
                         child: const Icon(CupertinoIcons.back,color: Colors.grey),
                       ),
                     ),
                    const  SizedBox(width: 75,),
                    const  Titre(text: "Doctor details"),
                   ]
               ),

              toolbarHeight: 50,
               pinned: true,
              flexibleSpace:Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding,vertical: 10),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             const  SizedBox(height: 24,),
              Expanded(
                flex: 2,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isImageExpanded =! isImageExpanded;
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    height: isImageExpanded ? 200 : 130,
               
                    width: isImageExpanded ? 200 : 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          image: AssetImage(widget.doctor.path),
                          fit: BoxFit.fill),
                    ),
                    curve: Curves.fastEaseInToSlowEaseOut,
                  ),
                ),
              ),
              Expanded(
                  flex: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ListTile(

                        title: Text(
                          widget.doctor.name, maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              wordSpacing: -1,
                              letterSpacing: -1),),
                        subtitle: Text(
                          widget.doctor.speciality,
                          style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 12),),
                        horizontalTitleGap: 1,
                        minLeadingWidth: 50,
                        isThreeLine: true,
                      ),
                      ListTile(
                        title: Text(widget.doctor.name,
                          style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              wordSpacing: -1,
                              letterSpacing: -1),),
                        subtitle: Text(widget.doctor.speciality,
                          style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 12),),
                      ),

                    ],
                  )),


            ]
        ),
        ),
             //  title: Titre(text: widget.doctor.name),
               bottom: TabBar(
                 splashFactory: InkRipple.splashFactory,

                  splashBorderRadius: BorderRadius.zero,
                 unselectedLabelColor: Colors.grey,
                 indicatorWeight: 2,

                 labelColor: primaryColor,
                   indicatorSize: TabBarIndicatorSize.tab,
                   indicatorColor: primaryColor,
                   tabs: ktabs,
               ),
              backgroundColor: Colors.white,
              //pinned: true,
              //floating: true,
            //  snap: true,
              expandedHeight: 270,
            ),
            SliverFillRemaining(
              child: TabBarView(children: kTabPages),
            )

          ],
        )
    )
        )
        );


  }

  Widget Title(String text) {
    return Text(
      text,
      style: const TextStyle(
          fontWeight: FontWeight.bold,
          letterSpacing: -1,
          fontSize: 14.5,
          color: primaryColor,
          fontFamily: "arial"
      ),
    );
  }
}