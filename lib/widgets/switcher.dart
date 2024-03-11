// ignore_for_file: use_super_parameters, sized_box_for_whitespace

import 'package:flutter/cupertino.dart';
// ignore: unnecessary_import
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled15/shared/appTheme.dart';

class Switcher extends StatefulWidget {
  const Switcher({Key? key}) : super(key: key);

  @override
  State<Switcher> createState() => _SwitcherState();
}

class _SwitcherState extends State<Switcher> {
  bool _switch = false;
  @override
  Widget build(BuildContext context) {

      return Container(
        width: 50,
        height: 30,
        child: CupertinoSwitch(
          value: _switch,
          onChanged: (value){
            setState(() {
                 ThemeProvider themeProvider = Provider.of<ThemeProvider>(context,listen: false);
                 themeProvider.toggleTheme(
                 );
            });
            _switch = value;

          },
        ) ,
      );

    }
  }

