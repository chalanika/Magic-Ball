import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor:Colors.blue,
          appBar:AppBar(
            title:Text('Ask Me Anything'),
            backgroundColor:Colors.black,
          ),
          body:BallPage(),
        ),
      ),
    );

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int number =1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children:<Widget>[
          Expanded(
            child: FlatButton(
              onPressed:(){
                setState(() {
                  number=Random().nextInt(5)+1;
                });
              } , 
              child: Image.asset('images/ball$number.png'),)
          
            
          )
        ]
      ),
    );
  }
}