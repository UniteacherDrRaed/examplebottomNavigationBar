import 'package:flutter/material.dart';

import 'page1.dart';
import 'page2.dart';
import 'page3.dart';
class MainPage extends StatefulWidget {
   MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
   int currentPageIndex=0;

List<Widget> screens=[Page1(),Page2(),Page3()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Example of BottomNavigationBar"),
        centerTitle: true,
        backgroundColor: Colors.brown.shade100,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.brown,
        onTap: (pageindex){
          setState(() {
            currentPageIndex=pageindex;
          });
        },
        items:const [
          BottomNavigationBarItem(icon: Icon(Icons.table_bar),label: "Tables"),
          BottomNavigationBarItem(icon: Icon(Icons.chair),label: "Chairs"),
          BottomNavigationBarItem(icon: Icon(Icons.info),label: "About"),
        ],
        currentIndex: currentPageIndex,
      ),
      body:Container(
        color: Colors.lime.shade100,
        child: screens[currentPageIndex],
      )
    );
  }
}
