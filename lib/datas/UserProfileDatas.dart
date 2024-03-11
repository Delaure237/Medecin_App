
// ignore_for_file: unnecessary_import, file_names, unused_local_variable
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'package:untitled15/widgets/switcher.dart';

import '../Models/profile_set.dart';
class Setting extends StatefulWidget {
  const Setting({super.key});

  List<UserProfile> getUser() {
    List<UserProfile> list = [];
    bool _switchValue = false;
    UserProfile edit = const UserProfile(lead: Icon(Iconsax.edit),
        tittle: Text("Edit profile",),
        trail: Icon(Iconsax.forward1));
    UserProfile secu = const UserProfile(lead: Icon(Iconsax.lock),
        tittle: Text("Security",),
        trail: Icon(Iconsax.forward1));
    UserProfile lang = const UserProfile(lead: Icon(Iconsax.language_square4),
        tittle: Text("Language", ),
        trail: Icon(Iconsax.forward1));
    UserProfile priv = const UserProfile(lead: Icon(Iconsax.security),
        tittle: Text("Terms & privacy", ),
        trail: Icon(Iconsax.forward1));
    UserProfile noti =const  UserProfile(lead: Icon(Iconsax.notification),
        tittle: Text("Push notification", maxLines: 1,overflow: TextOverflow.ellipsis,),
        trail: Switcher());
    UserProfile mode = UserProfile(lead: Container(
        height: 30,
        width: 30,
        decoration: const BoxDecoration(
          color: Colors.black,
          shape: BoxShape.circle,
        ),
        child: const Icon(Iconsax.moon, color: Colors.white,)),
        tittle: const Text("Dark mode", ),
        trail: const Switcher());

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






