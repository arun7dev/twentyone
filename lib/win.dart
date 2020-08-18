import 'package:flutter/material.dart';
import 'package:twentyone/main.dart';

class win extends StatefulWidget {
  @override
  _winState createState() => _winState();
}

class _winState extends State<win> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("Great work",style: TextStyle(fontSize: 100,fontWeight: FontWeight.bold,color: Colors.black45),),
            RaisedButton(onPressed: (){

              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => MyHomePage()),);
            },
              child:  Text("RE-START") ,
              color: Colors.green[200],
            )
          ],
        ),
      ),
    );
  }
}
