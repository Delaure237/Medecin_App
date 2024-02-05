
  import 'package:flutter/material.dart';
import 'package:untitled15/shared/profilePage.dart';
import 'package:untitled15/specialist/specialistFile.dart';
import 'package:untitled15/specialist/specialist_datas.dart';
import 'package:untitled15/widgets/doctor_cellView.dart';

class DoctorContainer extends StatelessWidget {


 List<Specialist> doc = getSpecialistsData();
  @override
  Widget build(BuildContext context) {
    return Card(

      elevation: 2,
      surfaceTintColor: Colors.white,
         child: Container(
           decoration:const  BoxDecoration(
             color: Colors.white,
             borderRadius: BorderRadius.only(topRight:Radius.circular(5),topLeft: Radius.circular(5)),
           ),
           height: 500,

         child:SizedBox(
           height: 100,
           child:  ListView.separated(
             shrinkWrap: true,
             physics: NeverScrollableScrollPhysics(),
             itemBuilder: (BuildContext context,int index){
               Specialist doctor = doc[index];

                return GestureDetector(
                  child:  DoctorCellView(doctor: doctor),
                   onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage(docta: doc[index],))
                     );
                   },
                );


             },
             separatorBuilder: ((BuildContext context ,index) => Container(
               child: const Padding(
                 padding: EdgeInsets.symmetric(horizontal: 16),
                 child: Divider(thickness: 1,),
               ),
             )
    ),
             itemCount: doc.length,
           ),
         )


         )

    );


  }

}