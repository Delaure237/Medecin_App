import 'package:flutter/material.dart';

class Message extends StatefulWidget{
  const Message({super.key});

  @override
  MessageState createState() => MessageState();
}
class MessageState extends State<Message>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        elevation: 3,
        shadowColor: Colors.black,
        leading: IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back_ios_rounded,color: Colors.black,)),
        title: const  Text("Schedule",style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontFamily: "arial"
        ),),
        centerTitle: true,
      ),
    );
  }
}