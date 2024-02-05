


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:untitled15/shared/constants.dart';
import 'package:untitled15/widgets/switcher.dart';

import '../Models/profile_set.dart';
class Setting extends StatefulWidget {
  const Setting({super.key});

  List<UserProfile> getUser() {
    List<UserProfile> list = [];
    bool _switchValue = false;
    UserProfile edit = const UserProfile(lead: Icon(Iconsax.edit),
        tittle: Text("Edit profile", style: AppStyle.appsBar,),
        trail: Icon(Iconsax.forward1));
    UserProfile secu = const UserProfile(lead: Icon(Iconsax.lock),
        tittle: Text("Security", style: AppStyle.appsBar),
        trail: Icon(Iconsax.forward1));
    UserProfile lang = const UserProfile(lead: Icon(Iconsax.language_square4),
        tittle: Text("Language", style: AppStyle.appsBar),
        trail: Icon(Iconsax.forward1));
    UserProfile priv = const UserProfile(lead: Icon(Iconsax.security),
        tittle: Text("Terms & privacy", style: AppStyle.appsBar),
        trail: Icon(Iconsax.forward1));
    UserProfile noti = UserProfile(lead: const Icon(Iconsax.notification),
        tittle: const Text("Push notification", style: AppStyle.appsBar,maxLines: 1,overflow: TextOverflow.ellipsis,),
        trail: Switcher());
    UserProfile mode = UserProfile(lead: Container(
        height: 30,
        width: 30,
        decoration: const BoxDecoration(
          color: Colors.black,
          shape: BoxShape.circle,
        ),
        child: const Icon(Iconsax.moon, color: Colors.white,)),
        tittle: const Text("Dark mode", style: AppStyle.appsBar),
        trail: Switcher());

    list.add(edit);
    list.add(secu);
    list.add(lang);
    list.add(priv);
    list.add(noti);
    list.add(mode);

    return list;
  }


  @override
  State<Setting> createState() => _SettingState();

}
  class _SettingState extends State<Setting> {

    @override
    Widget build(BuildContext context) {
      return const Placeholder();
    }

  }






