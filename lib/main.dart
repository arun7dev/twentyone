import 'package:flutter/material.dart';
import 'dart:math';

import 'package:twentyone/sorry.dart';
import 'package:twentyone/win.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '21',
      theme: ThemeData(

       primaryColor: Colors.black,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int DiceNumber = 1;
  int total=0;
 // int scr=0;

  void changeDiceFace() {
    setState(() {
      DiceNumber = Random().nextInt(6) + 1;

    });
  }




  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(

        title: Center(child: Text("21")),
      ),
      body: Center(

        child: Padding(
          padding: const EdgeInsets.all(21.0),
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              GestureDetector(
                child: Container(
                  color: Colors.yellow,

                 child: Image.asset(
                   'images/dice$DiceNumber.png',
                 ),
                ),
                onTap: (){
                  changeDiceFace();
                  total=total+DiceNumber;
                  if(total >21)
                    {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => Loss()),
                      );
                    }
                  else if(total==21)
                  {
                  Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => win()),);

                  }
                },
              ),
              Text("Score $total/21",style: TextStyle(fontSize: 50,fontWeight:FontWeight.bold,color: Colors.black45),),
              SizedBox(
                height: 20,
              ),
              RaisedButton(onPressed: (){
                setState(() {
                  total=0;
                });

              },child: Text("RETRY"),color: Colors.yellowAccent,),
            ],
          ),
        ),
      ),

    );
  }
}
