import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget{

@override
 createState() {
   return _ContadorPageState();
 
  }

}

class _ContadorPageState extends State <ContadorPage>{
  int _conteo = 10;

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
          Text ( '$_conteo' , style: TextStyle(fontSize: 35),),

        ]),
    ),
    floatingActionButton: _createButtons()
  );
}
 Widget _createButtons(){
    return Row(
    
    mainAxisAlignment:  MainAxisAlignment.center,
    children: <Widget>[
    SizedBox(width:30) ,
    FloatingActionButton(child: Icon(Icons.exposure_zero), onPressed: _resetear ),
    Expanded(child: SizedBox()),
    FloatingActionButton(child: Icon(Icons.remove ), onPressed: _restar ), 
    Expanded(child: SizedBox()), 
    FloatingActionButton(child: Icon(Icons.add), onPressed: _agregar ), 
    SizedBox(), 
   ],
 );
 }
   void _agregar(){
     setState(() => _conteo++ ); 
   }

   void _restar(){
     setState(() => _conteo-- ); 
   }

    void _resetear(){
     setState(() => _conteo = 0 ); 
   }

}