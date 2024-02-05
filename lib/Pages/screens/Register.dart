

import'package:flutter/material.dart';
import 'package:untitled15/Pages/loading.dart';
import 'package:untitled15/Services/auth.dart';

import '../../shared/AuthentificationPageTheme/theme.dart';
import '../../shared/AuthentificationPageTheme/widgets.dart';

 class RegisterPage extends StatefulWidget {
    final Function toggleView;
   const RegisterPage({super.key, required this.toggleView});

   @override
   State<RegisterPage> createState() => _RegisterPageState();
 }
 class _RegisterPageState extends State<RegisterPage> {
   bool  loading = false;
   final AuthService _auth = AuthService();
   final _formKey =  GlobalKey<FormState>();
   String email = "";
   String password = "";
   String password1 = "";
   String name = "";
   String surname = "";
   String error= "";
   String date = "";
   bool isObscure1 = true;
   bool isObscure2 = true;

   @override
   Widget build(BuildContext context) {
     return loading ? Loading() :Scaffold(
       backgroundColor: Colors.grey[200],
       body: SingleChildScrollView(
       child: Padding(
           padding: const EdgeInsets.only(top: 100,right: 24,left: 24),
         child: Column(
           children: [
             Form(
               key: _formKey,
                child: Column(
                   children: [
                     SharedWidget().textFieldContainer(
                       TextFormField(
                     onChanged: (val) {
                       setState(() => name=val);
                      },
                         autofocus: false,
                         validator:(val) => val!.isEmpty ? "Enter a valid name" :null,
                         decoration: FormTheme().inputDecorations.copyWith(hintText: "Name",prefixIcon: const  Icon(Icons.person,size: 18,)),
                       ),
                     ),
                    const  SizedBox(height: 12,),
                     SharedWidget().textFieldContainer(
                       TextFormField(
                     onChanged: (val) {
                       setState(() => surname = val);
                     },
                         validator:(val) => val!.isEmpty ? "Enter a valid surname" :null,
                         autofocus: false,
                         decoration: FormTheme().inputDecorations.copyWith(hintText: "Surname",prefixIcon:const  Icon(Icons.person,size: 18,)),
                       ),
                     ),
                   const   SizedBox(height: 12,),
                     SharedWidget().textFieldContainer(
                       TextFormField(
                           onChanged: (val) {
                             setState(() => date = val);
                           },
                         validator:(val) => val!.isEmpty ? "enter a valid date of birth" :null,
                         autofocus: false,
                         decoration: FormTheme().inputDecorations.copyWith(hintText: "Date of birth",prefixIcon: const Icon(Icons.calendar_month_rounded,size: 18,)),
                       ),
                     ),
                    const SizedBox(height: 12,),
                     SharedWidget().textFieldContainer(
                       TextFormField(
                         validator:(val) => val!.isEmpty ? "enter a valid email" :null,
                         onChanged: (val){
                           setState(() => email = val);


                         },
                         autofocus: false,
                         decoration: FormTheme().inputDecorations.copyWith(hintText: "Email",prefixIcon:const Icon(Icons.mail,size: 18,),
                         ),
                       ),
                     ),
                    const  SizedBox(height: 12,),
                     SharedWidget().textFieldContainer(
                         TextFormField(
                           validator:(val) => val!.length<8 ? "Enter a password with 8+ character" :null,
                           onChanged: (val) {
                             setState(() => password =  val);
                           },
                           obscureText: isObscure1,
                           autofocus: false,
                           decoration: FormTheme().inputDecorations.copyWith(hintText: "Password",prefixIcon:const  Icon(Icons.lock,size: 18,),
                               suffixIcon: IconButton(
                                   onPressed: (){
                                     setState(() {
                                       isObscure1=! isObscure1;
                                     });
                                   },
                                   icon: isObscure1? const Icon(Icons.visibility_off_rounded) : const Icon(Icons.visibility)
                               )
                           ),
                         )
                     ),
                   const   SizedBox(height: 12,),
                     SharedWidget().textFieldContainer(
                       TextFormField(
                         onChanged: (val) {
                           setState(() => password1=val);
                         },
                         validator:(val) => val!.length<8 ? "Enter a password with 8+ character" :null,
                         obscureText: true,
                         autofocus: false,
                         decoration: FormTheme().inputDecorations.copyWith(hintText: "Password",prefixIcon:const  Icon(Icons.lock,size: 18,),
                             suffixIcon: IconButton(
                                 onPressed: (){
                                   setState(() {
                                     isObscure2=! isObscure2;
                                   });
                                 },
                                 icon: isObscure2? const Icon(Icons.visibility_off_rounded) : const Icon(Icons.visibility)
                             )
                         ),
                       ),
                     ),
                    const  SizedBox(height: 40,),
                     ElevatedButton(

                       onPressed:() async {
                         if(_formKey.currentState!.validate()){
                           setState(() {
                             loading = true;
                           });
                           dynamic result = await _auth.RegisterWithEmailAndPassword(
                               email,password);
                           if(result == null){
                             setState(() {
                               loading = true;
                             });
                           }
                         }
                       },
                       child:  Container(
                           width: 400,
                           height: 56,
                           decoration: BoxDecoration(
                             color: Colors.teal,
                             borderRadius: BorderRadius.circular(10),
                           ),
                           child: Padding(
                             padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 5),
                             child: Text("Sign In",
                               textAlign: TextAlign.center,
                               style: FormTheme().buttonTextStyle,),
                           )
                       ),
                     ),
                    Text(error,style:const  TextStyle(color: Colors.red,fontSize: 12),),
                    const  SizedBox(height: 10,),
                   const   Text("---------------  Or  ---------------",style: TextStyle(fontSize: 16),),
                        const  Text("Sign In with:"),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         GestureDetector(
                           child:otherMethodContainer("lib/assets/images/google.png"),
                         ),
                       const   SizedBox(width: 12,),
                         GestureDetector(
                           child:otherMethodContainer("lib/assets/images/apple.png"),
                         )
                       ],
                     ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             const  Text("Already have an account ?",style: TextStyle(
                               color: Colors.black,
                               fontWeight: FontWeight.bold,
                               fontSize: 16,
                             ),),
                             TextButton(onPressed: (){
                               widget.toggleView();
                             },
                                 child: const Text("Log In ",style: TextStyle(
                                   color: Colors.teal,
                                   fontSize: 18,
                                 ),)
                             )
                       ],
                     )

                   ],
                 )
             )
           ],
         ),
       ),
       )
     );
   }
   Widget textfieldlabel(String text){
     return Padding(
         padding:const  EdgeInsets.only(right: 280,),
       child:Text(
       text,
       style: const TextStyle(
         color: Colors.black,
         fontSize: 14,
         fontWeight: FontWeight.w400,
       ),
       )
     );
   }
 }
 Widget otherMethodContainer(String txt){
   return Container(
     height: 70,
     width: 150,
     decoration: BoxDecoration(
       color: Colors.transparent,
       borderRadius: BorderRadius.circular(15),
       border: Border.all(
         color: Colors.grey,
         width: 1,
       )
     ),
     child: Padding(
         padding: const EdgeInsets.only(top:10,left: 16,right: 16,bottom: 10),
         child:  Image.asset(txt,height: 40,fit:
         BoxFit.contain,scale: 2.0,),
     )

   );
 }
