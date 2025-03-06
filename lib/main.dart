
import 'package:delevery_app/client_page.dart';
import 'package:delevery_app/login_page.dart';
import 'package:delevery_app/profile_page.dart';
import 'package:delevery_app/select_role_screen.dart';
import 'package:delevery_app/sign_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: SelectRoleScreen(),

      routes: {
        '/select': (context) => SelectRoleScreen(),
        '/client_page' : (context) => ClientPage(),
        '/profile_page' : (context) => ProfilePage(),
        '/login_page' : (context) => LoginPage(),
        '/sign_page' : (context) => SignUpPage(),
      },
    );
  }
}
