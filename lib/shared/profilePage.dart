
  import 'package:flutter/material.dart';
import 'package:untitled15/specialist/specialistFile.dart';
class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key, required this.docta}) : super(key: key);
final Specialist docta;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
           padding: EdgeInsets.all(0),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
                Image.asset(docta.path),
               Expanded(child: Container(
                 padding: EdgeInsets.all(5),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                      Text(this.docta.name),
                   ],
                 ),
               ))
             ],
           ),
        ),
      ),
    );
  }
}
