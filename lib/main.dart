import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_10/homepage.dart';
import 'package:flutter_application_10/login.dart';
import 'package:flutter_application_10/register.dart';
import 'package:flutter_application_10/splashscreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_10/syllabus.dart';



Future<void> main(List<String> args) async {
  
  
  runApp(MaterialApp(
    
    debugShowCheckedModeBanner: false,
    initialRoute: 'home',
    routes: {
      'splash':(context) => mysplash(),
      'login':(context) => mylogin(),
      'register':(context) => myregister(),
      'home':(context) =>myhome1(),
      'syllabus':(context) => syllabus(),
      
      

    },
  ),
  );
}

