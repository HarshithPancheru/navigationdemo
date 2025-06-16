import 'package:flutter/material.dart';
import 'package:navigationdemo/fifth_screen.dart';
import 'package:navigationdemo/fourth_screen.dart';
import 'package:navigationdemo/second_screen.dart';
import 'package:navigationdemo/third_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<String> titles = [
    // "Home Screen"
    "Second Screen",
    "Third Screen",
    "Fourth Screen",
    "Fifth Screen"
  ];
  List<Widget> pages = [
    // HomeScreen(),
    SecondScreen(),
    ThirdScreen(),
    FourthScreen(),
    FifthScreen()
  ];

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text(titles[currentIndex])), actions: [IconButton(onPressed: (){}, icon: Icon(Icons.logout))],),
      body: pages[currentIndex],
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text("Menu")),
            ListTile(
              title:  Text("First"),
            ),
            ListTile(
              title:  Text("Second"),
            ),
            ListTile(
              title:  Text("Third"),
            ),
            ListTile(
              title:  Text("Fourth"),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onTap,
        backgroundColor: Colors.pink[700],
        items: [
          // BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.amber,), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.two_k_rounded, color: Colors.amber), label: "Second"),
          BottomNavigationBarItem(icon: Icon(Icons.three_g_mobiledata, color: Colors.amber), label: "Third"),
          BottomNavigationBarItem(icon: Icon(Icons.four_g_mobiledata, color: Colors.amber), label: "Fourth"),
          BottomNavigationBarItem(icon: Icon(Icons.five_g, color: Colors.amber), label: "Fifth"),
          ],
      ),
      
      floatingActionButton: FloatingActionButton(onPressed: (){
        
      },
      child: Icon(Icons.add),),
    );
  }
}
