
   import 'package:flutter/material.dart';
   import 'package:untitled15/specialist/specialistFile.dart';

import '../specialist/specialist_datas.dart';
class DoctorCellView extends StatelessWidget {

final Specialist doctor;

   DoctorCellView({super.key,required this.doctor});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
     child: ListTile(
        leading:  Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(5),
            image:  DecorationImage(image: AssetImage(doctor.path),fit: BoxFit.fill),

          ),
        ),
        title: Text(
          doctor.name,
          style: const TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.bold,
              fontFamily: "arial",

          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,

        ),
        subtitle: Row(
          mainAxisAlignment:  MainAxisAlignment.spaceBetween,
          children: [
            Text(
              doctor.speciality,
              style:const  TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),

          ],
        ),

        trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 15,),
              Wrap(
                runAlignment:WrapAlignment.end,
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 0,
          children: [ Icon(Icons.star_rate_rounded,color: Colors.yellow,size: 16,),
                        Text("${doctor.star}",style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),),
               ]
                        ),
            Text("${doctor.way}km away",style: const TextStyle(
              fontSize: 10,
              color: Colors.grey,
            ),),

          ],
        ),





     )
    );

  }

}