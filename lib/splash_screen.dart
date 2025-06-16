import 'package:flutter/material.dart';
import 'package:navigationdemo/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<SplashScreen> {

@override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1), (){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=> HomeScreen()));

    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/image/icon.png")
          ],
        ),
      ),
    );
  }
}