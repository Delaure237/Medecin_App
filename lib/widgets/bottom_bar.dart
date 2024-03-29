
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:untitled15/Pages/schedule.dart';
import 'package:untitled15/Pages/HomePage.dart';
import 'package:untitled15/Pages/message.dart';
import 'package:untitled15/Pages/profile.dart';
import 'package:untitled15/constant.dart';


class ExploreBar extends StatefulWidget {
  ExploreBarState createState() => ExploreBarState();


}
class ExploreBarState extends State<ExploreBar> {

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {


    final kTabPages =  <Widget> [
       const HomePage(),
    const Message(),
      const Calendar(),
     const Profile(),
    ];
    final kBottomNavBarItems = <BottomNavigationBarItem>[
     const  BottomNavigationBarItem(icon: Icon( Iconsax.home_15,),label: ""),
     const   BottomNavigationBarItem(icon: Icon(Iconsax.calendar5),label: ""),
     const  BottomNavigationBarItem(icon: Icon(Iconsax.message_favorite5,),label: ""),
       const BottomNavigationBarItem(icon: Icon(Icons.person),label: ""),
    ];
    assert(kTabPages.length == kBottomNavBarItems.length);
    final bottomNavBar = BottomNavigationBar(
           backgroundColor: Colors.white,
         unselectedItemColor: Colors.grey,
        selectedItemColor: primaryColor,
        items: kBottomNavBarItems,
      currentIndex: currentIndex,
        showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
      onTap: (int index){
          setState(() {
            currentIndex = index;

          });

      },
    );
    return Scaffold(
    body: kTabPages[currentIndex],
    bottomNavigationBar: Container(
      child:bottomNavBar,
    )
    );
  }

}