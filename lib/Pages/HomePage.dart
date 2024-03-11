
   import 'package:flutter/material.dart';
import 'package:untitled15/constant.dart';
   import 'package:untitled15/widgets/appbar.dart';
import 'package:untitled15/widgets/doctor_container.dart';
import 'package:untitled15/widgets/scheduleContainer.dart';
import 'package:untitled15/widgets/search.dart';

import '../compoments/title.dart';
class HomePage extends StatefulWidget{
  const HomePage({super.key});
  @override
  HomePageState createState() => HomePageState();
}
class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header(context),
      body: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: defaultPadding, horizontal: defaultPadding),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const Align(
                  alignment: Alignment.topLeft,
                  child: Wrap(
                    children: [
                      Titre(text: "Hi,withney \u{1F44B} ")
                    ],
                  )
              ),
              const SizedBox(height: 16,),
              Container(
                height: 40,
                width: 300,
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
                  const Titre(text: "Upcoming Schedule"),
                  GestureDetector(
                    onTap: () {},
                    child: subtitle(),
                  )
                ],
              ),
              const Schedule(),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Titre(text: "Recommended Specialist"),
                  GestureDetector(
                    onTap: () {},
                    child: subtitle(),
                  )
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

  Widget subtitle() {
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
