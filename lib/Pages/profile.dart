
   import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:untitled15/Services/auth.dart';
import 'package:untitled15/datas/UserProfileDatas.dart';
import 'package:untitled15/shared/constants.dart';
//import 'package:untitled15/shared/profilePage.dart';
//import 'package:untitled15/widgets/fontManager.dart';
  // import 'package:chips_choice/chips_choice.dart';

import '../Models/profile_set.dart';


class Profile extends StatefulWidget{
  const Profile({super.key});

  @override
ProfileState createState() => ProfileState();

}
class ProfileState extends State<Profile>{
  final AuthService _auth = AuthService();
  final Setting param = Setting();
  //List<UserProfile>  user = Data();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:const Text("Profile",style: AppStyle.appsBar,),
        leading: IconButton.outlined(onPressed: (){}, icon: const Icon(Icons.arrow_back_ios,color: Colors.black,)),
      ),
      body:SingleChildScrollView(

      child:Column(
      children:[
        Container(
          height: 90,
          width: 90,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.black,
                width: 2,
              )
          ),
          child: const  Icon(
            Iconsax.profile_add4,
            color: Colors.black,
            size: 50,
          ),
        ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal:8),

           child: ListView.builder(

             shrinkWrap: true,
             itemCount: param.getUser().length,
             //user.length,
              scrollDirection: Axis.vertical,
                itemBuilder:(context,index){
                   return Column(
                     mainAxisAlignment: MainAxisAlignment.end,
                     children: [

                       Container(
                         //alignment: Alignment.center,
                        // padding: EdgeInsets.symmetric(vertical: 0),
                       height:56,
                       width: 300,
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(30),
                           border: Border.all(
                             color: Colors.black,
                             width:2,

                           )
                       ),
                       child: ListTile(
                         trailing: param.getUser()[index].trail,
                         //user[index].trail,
                         leading: param.getUser()[index].lead,
                         //user[index].lead,
                         title:  param.getUser()[index].tittle,
                         //user[index].tittle,
                       )
                       ) ,
                     const   SizedBox(height: 24,),

                     ],

                   );

                }
            ),

         ),
        GestureDetector(
          onTap:() async {
             setState(() {
              _auth.signOut();
             });
          },
          child:Wrap(
            runSpacing: 12,
            //runAlignment: WrapAlignment.end,
            crossAxisAlignment: WrapCrossAlignment.end,
            verticalDirection: VerticalDirection.down,
            alignment: WrapAlignment.center,
            children: [
              Text("Log Out",style: AppStyle.appsBar,),
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green,
                ),
                child: IconButton(onPressed: (){}, icon: Icon(Icons.login_outlined,color: Colors.white,size: 16,semanticLabel: "log",)),
              ),
              SizedBox(width: 12,),

            ],
        )
        )


         ]
      )
      )

    );
  }
}