
// ignore_for_file: must_be_immutable

  import 'package:flutter/material.dart';
import 'package:untitled15/shared/profilePage.dart';
import 'package:untitled15/Models/specialist.dart';
import 'package:untitled15/specialist/specialist_datas.dart';
import 'package:untitled15/widgets/doctor_cellView.dart';

class DoctorContainer extends StatelessWidget {


 List<Specialist> doc = getSpecialistsData();

  DoctorContainer({super.key});
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

         child:Expanded(
                flex: 1,
           child:  ListView.separated(
             shrinkWrap: true,
             physics: const NeverScrollableScrollPhysics(),
             itemBuilder: (BuildContext context,int index){
               Specialist doctor = doc[index];
                return GestureDetector(
                  child:  DoctorCellView(doctor: doctor),
                   onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ProfilePage(doctor: doc[index],))
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