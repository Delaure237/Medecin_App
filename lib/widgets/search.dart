
  import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
//import'package:untitled15/Controller/SearchpageController.dart';

import '../Pages/PageRecherche.dart';

TextField searchBar(context){
  return    TextField(
    onChanged: (text){
      if(text.isNotEmpty){
        Navigator.push(context, Recherche());
      }
    },
    decoration: const InputDecoration(
      contentPadding: EdgeInsets.symmetric(vertical: 1,horizontal: 16),
      border: InputBorder.none,
      hintText:"Search for a specialist",
      hintStyle: TextStyle(
         fontSize: 12,

        color: Colors.grey,
      ),
      prefixIcon:Icon(Iconsax.search_normal_15,size: 16,color: Colors.grey,)
    ),
  );
}