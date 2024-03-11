

// ignore_for_file: unused_field, unused_import

 import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:untitled15/specialist/specialist_datas.dart';

import '../Models/specialist.dart';
    class SearchController extends StatefulWidget {
      const SearchController({super.key});

      @override
      SearchControllerState  createState() => SearchControllerState();
    }

    class SearchControllerState extends State<SearchController> {
         final List<String> _lastSearchSpecailist  = [];
         List<Specialist> searchResult = [];
         late TextEditingController textEditingController;
         @override
         void initState(){
           super.initState();
           textEditingController = TextEditingController();
         }
         @override
         void dispose(){
           super.dispose();
           textEditingController.dispose();
         }
      @override
      Widget build(BuildContext context) {
        return Scaffold(
         body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 75,
                  child: Row(
                    children: [
                      Expanded(
                          child:TextField(
                            controller: textEditingController,
                            onChanged:search,
                            onSubmitted:save ,
                            decoration: const InputDecoration(
                               hintText: "Search a Specialist",
                            ),
                          )
                      ),
                      IconButton(
                          onPressed: (){

                          },
                          icon: const Icon(Iconsax.search_normal_15))
                    ],
                  ),
                ),
                Text(
                    (textEditingController.text == "")
                        ? "Last Search"
                        : "Nous avons trouvé pour vous",
                  style: const TextStyle(
                    fontSize: 16,
                    fontFamily: "Arial"
                  ),
                ),
                Expanded(
                    child:(textEditingController.text == "")
                        ? emptyWidget()
                        : onSearchWidget()
                )
              ],

        )
         ),
        );
      }
      Widget emptyWidget(){
          return Container();
      }
         Widget onSearchWidget(){
           return Container();
         }
      search(String string){
          // final result = research(string);
              setState(() {

              });
      }
      save(String string){

      }
      onPressed(){

      }
    }
