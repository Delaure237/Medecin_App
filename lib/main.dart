
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled15/Models/user.dart';
import 'package:untitled15/Services/auth.dart';
import 'package:untitled15/Services/push_notification.dart';
import 'package:untitled15/Wrapper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:untitled15/shared/appTheme.dart';
import 'constant.dart';
import 'firebase_options.dart';

void main() async  {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await FireBaseApi().initNotification();
  runApp(
  MultiProvider(
      providers:[

        ChangeNotifierProvider(
            create: (BuildContext context) => ThemeProvider(true),
        )
      ] ,
     child: const MyApp()
  )
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MultiProvider(
        providers: [
      StreamProvider<CurrentUser?>.value(
        catchError: (_,__) => null,
        value: AuthService().user,
         initialData:null,
      ),

    ],
        child: MaterialApp(
          theme: ThemeData.light().copyWith(
               appBarTheme: const AppBarTheme(
                 surfaceTintColor: Colors.white,
                 backgroundColor: Colors.white,
               ),
            scaffoldBackgroundColor : bgColor,
            textTheme : const TextTheme(
              // ignore: deprecated_member_use
              bodyText1: TextStyle(
                fontFamily: "arial",
              )
            ),
            ),
          debugShowCheckedModeBanner: false,
          home: const Wrapper(),
          ),

    );
  }
}

