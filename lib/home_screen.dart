import 'package:flutter/material.dart';
import 'package:navigationdemo/second_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Home Screen")),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Welcome", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
        
            ElevatedButton(onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Hey ther!!"), duration: Duration(seconds: 10),));
              // Navigator.push(context, MaterialPageRoute(builder: (_)=>SecondScreen()));

            }, child: Text("Click me"))
        

          ],
        ),
      ),
    );
  }
}