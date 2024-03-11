import 'package:flutter/material.dart';

import 'package:flutter_spinkit/flutter_spinkit.dart';
// ignore: use_key_in_widget_constructors
class Loading  extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Center(
          child:SpinKitCubeGrid(
            color:Colors.teal,
            size:50,
          )
      ),
    );
  }
}