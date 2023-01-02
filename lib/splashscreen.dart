import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_10/login.dart';
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';

class mysplash extends StatefulWidget {
  const mysplash({Key? key}) : super(key: key);

  @override
  State<mysplash> createState() => _mysplashState();
}

class _mysplashState extends State<mysplash> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        backgroundColor: Color.fromARGB(255, 14, 20, 70),
        splash: Image.asset('assets/images/dav.png'),
        splashIconSize: 250,
        animationDuration: Duration(
          seconds: 1,
        ),
        nextScreen: mylogin(),
        splashTransition: SplashTransition.fadeTransition,
      ),
    );
  }
}
