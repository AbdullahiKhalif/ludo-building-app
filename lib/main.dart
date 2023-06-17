import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text("Dicee App"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: DiceeApp(),
    ),
  ));
}

class DiceeApp extends StatefulWidget {
  const DiceeApp({super.key});

  @override
  State<DiceeApp> createState() => _DiceeAppState();
}

class _DiceeAppState extends State<DiceeApp> {
  int leftDiceeButton =1;
  int rightDiceeButton =1;
  void ChangeDiceFace(){
    setState(() {
       leftDiceeButton = Random().nextInt(6)+1;
       rightDiceeButton = Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: (){
                  
                  ChangeDiceFace();
                  
                },
                
                child: Image.asset('images/dice$leftDiceeButton.png'),
              ),
            ),
            SizedBox(
              width: 20.0,
            ),
            Expanded(
              child: InkWell(
                onTap: (){
                ChangeDiceFace();
              },
              child: Image.asset('images/dice$rightDiceeButton.png')),
            )
          ],
        ),
      ),
    );;
  }
}
