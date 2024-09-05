import 'package:flutter/material.dart';
import 'package:movies/screens/main_screen.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});
  static const String routeName = 'splash';

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 2) , () {
      Navigator.pushReplacementNamed(context, MainScreen.routeName);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/splash.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),





      //Image.asset("assets/images/splash.png"),
    );
  }
}