import 'package:flutter/material.dart';

class consejos extends StatelessWidget{
@override
Widget build(BuildContext context) {
  return (
    Scaffold(
      
      appBar: AppBar(title: Text("Consejos para mascotas")),
      body: Column(
children: [
  Text("Aqui encontraras los datos de tu mascota", style: TextStyle(color: Colors.lightGreen),)
],

      ),
    )
  );
}

}
