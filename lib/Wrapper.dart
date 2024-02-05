import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled15/Models/user.dart';
import 'package:untitled15/Pages/HomePage.dart';
import 'package:untitled15/Pages/screens/Authentification.dart';
import 'package:untitled15/widgets/bottom_bar.dart';
class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<CurrentUser?>(context);
    if (user == null) {
      return Authenticate();
    } else {
      return  ExploreBar();
    }
  }
}
