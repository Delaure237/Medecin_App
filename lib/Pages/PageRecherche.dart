
  import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
class Recherche extends MaterialPageRoute<String>{
  Recherche():
      super(
        builder: (BuildContext context){
          return Scaffold(
            body:  Container(
              height: 75,
              child: Row(
                children: [
                  Expanded(
                    child:Container(
                        height:40,
                        width:300,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(7),
                        ),

                        child: const TextField(
                       // controller: textEditingController,
                       // onChanged:search,
                      //  onSubmitted:save ,
                           decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(vertical: 1,horizontal: 16),
                           border: InputBorder.none,
                               hintText:"Search for a specialist",
                              hintStyle: TextStyle(
                            fontSize: 12,

                  color: Colors.grey,
                ),
                prefixIcon:Icon(Iconsax.search_normal_15,size: 16,color: Colors.grey,)
            ),
                        ),
                      )
                  ),
                  IconButton(
                      onPressed: (){

                      },
                      icon: Icon(Iconsax.search_normal_15))
                ],
              ),
            ),
          );
        }
      );
}