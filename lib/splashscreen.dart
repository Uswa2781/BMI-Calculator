import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 224, 190, 194),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset('assets/fitness.json'),
          AnimatedTextKit(
            animatedTexts: [
              TyperAnimatedText('Welcome To Bmi Calculator',textStyle: TextStyle(
                color: 
                Colors.black,
                fontSize: 25,fontWeight: FontWeight.bold),
                
                ),
             

            ]
            )
       
        

        ],
      )

    );
  }
}

