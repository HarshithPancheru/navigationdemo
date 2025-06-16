import 'package:flutter/material.dart';
import 'package:navigationdemo/home_screen.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Second Screen")),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Welcome", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
        
            ElevatedButton(onPressed: (){
              Navigator.pop(context, MaterialPageRoute(builder: (_)=>HomeScreen()));
            }, child: Text("Click me"))
        
        
          ],
        ),
      ),
    );
  }
}