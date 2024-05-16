
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:ott/botpage.dart';
class spl extends StatelessWidget {
  const spl({super.key});

  @override

  Widget build(BuildContext context) {
    return

            AnimatedSplashScreen(
              splashIconSize: 300,

              backgroundColor: Colors.black,
              // pageTransitionType:
              animationDuration: Duration(
                seconds: 1,
              ),
              splashTransition: SplashTransition.fadeTransition,
              splash: 'assets/splash.png',
              nextScreen: bot(),
            );
            Container(
              height: double.infinity,

              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.pink,Colors.orange,Colors.blue,Colors.purpleAccent,Colors.yellowAccent],
                  end: Alignment.bottomCenter,
                  begin: Alignment.topCenter,
                ),
              ),
            );
  }
}


