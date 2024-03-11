


//import 'package:flutter/material.dart';
import 'package:untitled15/Models/specialist.dart';

 List<Specialist> getSpecialistsData() {

List<Specialist> doc = [];
doc.add(Specialist(name: "Dr Basile Njie", speciality: "Gynaecologist", way: 2,star: 4.6,path: "lib/assets/images/profiles/Basile-Njei.jpg"));
doc.add( Specialist(name: "Dr Claudel Noubissie", speciality: "Chirugien", way: 10, star: 4.9, path: "lib/assets/images/profiles/cn.jpg"));
doc.add( Specialist(name: "Dr Carla Dupont", speciality: "neuro-chirugienne", way: 3, star: 4.5,path: "lib/assets/images/profiles/nr.jpg"));
doc.add(Specialist(name: "Dr.Katie Edwards", speciality: "Practitionner", way: 3, star: 4.5, path:"lib/assets/images/profiles/gynecologue.jpg"));
doc.add( Specialist(name: "Dr.Katie Edwards", speciality: "Practitionner", way: 3, star: 4.5, path:"lib/assets/images/profiles/bl.jpg"));

return doc;


}

  List<Specialist> research(String string) {
   final lowercase = string.toLowerCase();
   final all = getSpecialistsData();
   List<Specialist> result = [];
   for (var Specialist in all) {
    //final specialist = Specialist.name.toLowerCase();
    if (Specialist.name.contains(lowercase)) {
     result.add(Specialist);
    }
   }
   return result;
  }





