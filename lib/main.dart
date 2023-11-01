import 'package:flutter/material.dart';
import 'package:uts_pemrograman_mobile/easy_splash_screen.dart';
import 'package:uts_pemrograman_mobile/login.dart';
import 'package:uts_pemrograman_mobile/register.dart';
import 'package:uts_pemrograman_mobile/resetpass.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'splash', // Atur rute awal ke 'splash'
      onGenerateRoute: (settings) {
        if (settings.name == 'splash') {
          return MaterialPageRoute(builder: (context) => SplashPage());
        } else if (settings.name == 'login') {
          return MaterialPageRoute(builder: (context) => MyLogin());
        } else if (settings.name == 'register') {
          return MaterialPageRoute(builder: (context) => myRegister());
        } else if (settings.name == 'forgot') {
          return MaterialPageRoute(builder: (context) => resetPassword());
        }
      },
    ),
  );
}
