import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/notes assets/background@2x.png',
                ),
                fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 150),
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Image.asset('assets/notes assets/Group 468.png'),Padding(
              padding: const EdgeInsets.only(top:40.0),
              child: Text('Welcome to Notes',style: TextStyle(color: Colors.white,fontSize: 24),),
            )],

          ),
        ));
  }
}
