import 'package:divo/customtextfield.dart';
import 'package:flutter/material.dart';
import 'package:divo/screens/HomeScreen.dart';
import 'package:divo/screens/loginpage.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:divo/screens/loginpage.dart';
import 'package:divo/screens/welcome_screen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => SplashScreen();
}

class SplashScreen extends State<Splashscreen> {
  var formKey = GlobalKey<FormState>();
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    debugShowCheckedModeBanner:
    false;
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;


    return Scaffold(
      body: AnimatedSplashScreen(
        splash: 'assets/SplashScreen.gif',
        splashIconSize: 200.0,
        centered: true,
        splashTransition: SplashTransition.rotationTransition,
        duration: 3100,
        nextScreen: WelcomeScreen(),
      ),
    );
  }
}
