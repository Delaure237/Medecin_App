import 'package:iconsax/iconsax.dart';
import 'package:untitled15/Pages/loading.dart';
import'package:flutter/material.dart';
import 'package:untitled15/Services/auth.dart';

import '../../shared/AuthentificationPageTheme/theme.dart';
import '../../shared/AuthentificationPageTheme/widgets.dart';



 class LogInPage extends StatefulWidget {
   final Function toggleView;
   const LogInPage({super.key,required this.toggleView}) ;

   @override
   State<LogInPage> createState() => _LogInPageState();
 }

 class _LogInPageState extends State<LogInPage> {
   bool loading = false;
   final AuthService _auth = AuthService();
   final _formKey =  GlobalKey<FormState>();
   String email = "";
   String password = "";
   String error= "";
   Color pageColor = Colors.teal;
   bool isObscure = true;
   bool isChecked= false;
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
        MaterialState.selected,
      };
      if(states.any(interactiveStates.contains)){
       return Colors.teal;
      }
      return Colors.white;
    }

   @override
   Widget build(BuildContext context) {
    // double headerSize = MediaQuery.of(context).size.height*0.7;

     final emailField =
       TextFormField(
         validator:(val) => val!.length<8 ? "Enter a password with 8+ character" :null,
         onChanged: (val){
           setState(() => email = val);
         },
         autofocus: false,
         decoration: FormTheme().inputDecorations.copyWith(hintText: "|   Email",prefixIcon:const Icon(Icons.mail,size: 20,),

         ),
       );
     final passwordField = TextFormField(
         validator:(val) => val!.length<8 ? "Enter a password with 8+ character" :null,
       onChanged: (val){
       setState(() => password = val);
     },

       obscureText: isObscure,
       autofocus: false,
       decoration: FormTheme().inputDecorations.copyWith(hintText: "|   Password",prefixIcon:const  Icon(Iconsax.lock,size: 20,),
           suffixIcon:  IconButton(
               onPressed: (){
                 setState(() {
                   isObscure=! isObscure;

                 });
               },
               icon: isObscure? const Icon(Icons.visibility_off_rounded) : const Icon(Iconsax.eye)
           )

       )
     );
     return  loading ? Loading() :Scaffold(

       body: LayoutBuilder(


           builder: (BuildContext context,BoxConstraints viewportConstraints){

             return SingleChildScrollView(
               child: ConstrainedBox(
                 constraints: BoxConstraints(
                   minHeight: viewportConstraints.maxHeight,
                 ),
                 child: Container(
                   color: Colors.teal,
                   child:  IntrinsicHeight(
                     child: Column(
                       children: [
                         Padding(
                           padding:const  EdgeInsets.all(8),
                           child: Center(
                             child: Column(
                               mainAxisAlignment: MainAxisAlignment.center,
                               crossAxisAlignment: CrossAxisAlignment.stretch,
                               mainAxisSize: MainAxisSize.max,
                               children: [
                                 CircleAvatar(
                                   radius: 40,
                                   backgroundColor: Colors.white,
                                   child: Icon(
                                     Iconsax.profile,
                                     size: 48,
                                     color: pageColor,
                                   ),
                                 ),
                               const   Padding(padding:  EdgeInsets.all(16),
                                   child: Text("Login",style: TextStyle(
                                       fontWeight: FontWeight.bold,
                                       fontSize: 18,
                                       color: Colors.white,
                                       fontStyle: FontStyle.italic),
                                     textAlign: TextAlign.center,

                                   ),
                                 ),


                               ],
                             ),
                           ),
                         ),
                         Expanded(
                             child: Container(
                               height: MediaQuery.of(context).size.height*0.5,
                              width: MediaQuery.of(context).size.width,
                           decoration:  BoxDecoration(
                             color: Colors.grey[200],
                             borderRadius:const  BorderRadius.only(
                               topLeft: Radius.circular(56),
                               topRight: Radius.circular(56),
                             ),

                           ),
                           child: Padding(
                             padding: const EdgeInsets.all(16),
                             child: Form(
                               key: _formKey,
                               child:  Column(
                               mainAxisSize: MainAxisSize.max,
                               mainAxisAlignment: MainAxisAlignment.start,
                             //  crossAxisAlignment: CrossAxisAlignment.stretch,
                               children: [

                                 Row(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children: [

                                     const  Text("Log In ",style: TextStyle(

                                       color: Colors.teal,
                                       fontWeight: FontWeight.bold,
                                       fontSize: 18,
                                     ),),
                                     TextButton(onPressed: (){},
                                         child: const Text("to your account",style: TextStyle(
                                           color: Colors.black,
                                           fontSize: 20,
                                         ),
                                         )
                                     )
                                   ],
                                 ),

                                 const SizedBox(height: 40,),

                                 SharedWidget().textFieldContainer(
                                   emailField,
                                 ),
                                 const SizedBox(height: 24.0,),
                             SharedWidget().textFieldContainer(
                               passwordField,
                             ),
                               const     SizedBox(height: 20,),
                                 Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   children: [
                                         Wrap(
                                           crossAxisAlignment: WrapCrossAlignment.center,
                                           children :[
                                             Checkbox(

                                              fillColor: MaterialStateProperty.resolveWith(getColor),
                                                 checkColor: Colors.white,
                                                 value: isChecked, onChanged:(bool? value){
                                                 setState(() {
                                                   isChecked = value !;
                                                 });

                                             }
                                             ),
                                           const  Text("Remember Me"),
                                 ]
                                          ),
                                     TextButton(onPressed: (){}, child: const Text("forgot password",style: TextStyle(
                                       color: Colors.teal,
                                       fontSize: 16,
                                     ),)),
                                   ],
                                 ),
                                const SizedBox(height: 24,),
                                ElevatedButton(

                                  onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                             setState(() {
                               loading = true;
                                   });
                            dynamic result = await _auth.signInWithEmailAndPassword(email, password);
                             if (result == null) {
                                 setState(() {
                            error = 'could not sign in with those credential';
                                  loading = false;
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
                                      padding:const  EdgeInsets.symmetric(horizontal: 30,vertical: 5),
                                      child: Text("Log In",
                                        textAlign: TextAlign.center,
                                        style: FormTheme().buttonTextStyle,),
                                    )

                                  ),
                                ),

                                const  SizedBox(height: 16.0,),
                                 Row(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children: [
                                    const  Text("Don't have an account ?",style: TextStyle(
                                       color: Colors.black,
                                       fontWeight: FontWeight.bold,
                                       fontSize: 18,
                                     ),),
                                     TextButton(onPressed: (){
                                       widget.toggleView();
                                     },
                                         child: const Text("Sign In",style: TextStyle(
                                           color: Colors.teal,
                                           fontSize: 18,
                                         ),)
                                     )
                                   ],
                                 )

                               ],
                             ),
                           ),
                         ))
                         )
                       ],
                     ),
                   ),
                 ),
               ),
             );
           }
       ),
     );
   }
 }



