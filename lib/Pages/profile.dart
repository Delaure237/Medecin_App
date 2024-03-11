
// ignore_for_file: unused_import

   import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:untitled15/Pages/HomePage.dart';
import 'package:untitled15/Services/auth.dart';
import 'package:untitled15/datas/UserProfileDatas.dart';
import '../Models/profile_set.dart';
import '../constant.dart';


class Profile extends StatefulWidget{
  const Profile({super.key});

  @override
ProfileState createState() => ProfileState();

}
class ProfileState extends State<Profile>{
  final AuthService _auth = AuthService();
  final Setting param = const Setting();
  //List<UserProfile>  user = Data();
  @override
  Widget build(BuildContext context){
    return SafeArea(child:
      Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        centerTitle: true,
        title: const Text("Profile",style:titleStyle, ),
        leading: GestureDetector(
          onTap:(){
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>const HomePage()));
          },
        child: const Icon(Icons.arrow_back_ios,color: Colors.black,)),
      ),
      body:Padding(
       padding:const EdgeInsets.symmetric(horizontal:defaultPadding),
      child: SingleChildScrollView(
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

           ListView.builder(
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
        GestureDetector(
          onTap:() async {
             setState(() {
              _auth.signOut();
             });
          },
          child:GestureDetector(
            onTap: (){},
         child: Wrap(
            runSpacing: 12,
            //runAlignment: WrapAlignment.end,
            crossAxisAlignment: WrapCrossAlignment.end,
            verticalDirection: VerticalDirection.down,
            alignment: WrapAlignment.center,
            children: [
             const  Text("Log Out",style: titleStyle,),
              Container(
                height: 30,
                width: 30,
                decoration:const  BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green,
                ),
                child: const  Icon(Icons.login_outlined,color: Colors.white,size: 16,semanticLabel: "log",)),
            ]
      ),

        ),



        )



         ]
      )
      )
      )
      )
    );
  }
}