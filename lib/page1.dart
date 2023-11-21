import 'package:flutter/material.dart';
class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100,
        width: 50,
        color: Colors.red,
        child:const Text("Tables"),
      ),
    );
  }
}
