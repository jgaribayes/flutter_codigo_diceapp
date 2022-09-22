import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int lefDice = 1;
  int rightDice = 1;

  @override
  Widget build(BuildContext context) {
    print("BUELD!!!!!!");
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        title: const Text("DiceApp"),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
        elevation: 10,
      ),
      body: Center(
        child: Row(

          children: [
            Expanded(
              flex: 1,
              child: TextButton(
                onPressed: (){
                  lefDice = Random().nextInt(6) +1;
                  rightDice = Random().nextInt(6) + 1;
                  setState(() {
                    
                  });


                },
                child: Image.asset(
                  "assets/images/dice$lefDice.png",
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: TextButton(
                onPressed: (){
                  rightDice = Random().nextInt(6) + 1;
                  lefDice = Random().nextInt(6) +1;
                  setState(() {

                  });

                },
                child: Image.asset(
                  "assets/images/dice$rightDice.png",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

