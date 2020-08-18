import 'package:flutter/material.dart';
import 'package:twentyone/main.dart';


class Loss extends StatefulWidget {
  @override
  _LossState createState() => _LossState();
}

class _LossState extends State<Loss> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("BETTER LUCK NEXT TIME",style: TextStyle(fontSize: 100,fontWeight: FontWeight.bold,color: Colors.white),),
            RaisedButton(onPressed: (){
              Text("RE-TRY") ;
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => MyHomePage()),);
            },
              child:  Text("RE-START") ,
            color: Colors.pink[200],)
          ],
        ),
      ),
    );
  }
}
