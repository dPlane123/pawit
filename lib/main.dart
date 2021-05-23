import 'package:flutter/material.dart';
import 'package:pawit/authenticate/createAccount.dart';
import 'package:pawit/authenticate/login.dart';

import 'package:pawit/profile/userProfile.dart';
import 'package:pawit/request/request.dart';
import 'package:pawit/screens/home.dart';
import 'package:pawit/screens/loading.dart';
import 'package:pawit/screens/menu.dart';
//import 'package:pawit/screens/loading.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Automatically use Portrait
    // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    return MaterialApp(
      title: "Paw-It",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Montserrat',
      ),
      routes: {
        '/': (loading) => Loading(),
        '/home': (home) => Home(),
        '/request': (request) => Request(),
        '/create': (createAccount) => SignupPage(),
        '/menu': (menu) => Menu(),
        '/login': (login) => LoginPage(),

        '/user_profile': (userProfile) => UserProfile(),
      },
    );
  }
}
