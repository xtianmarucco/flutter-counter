import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

final conteo = 10;

@override 
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Mi contador'),
      centerTitle: true, 

    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  <Widget>[
          Text ('numero de clicks', style: TextStyle(fontSize: 25) ),
          Text ( '$conteo' , style: TextStyle(fontSize: 35),),

        ]),
    ),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat ,
    floatingActionButton: FloatingActionButton(
      child: Icon( Icons.add ),
      onPressed: () {},),
  );
}
  
}