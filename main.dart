import 'dart:ui';

import 'package:flutter/material.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MiDOG',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primaryColor: Colors.lightGreen,
      ),
      home: MiMascota(),
    );
  }
}

class MiMascota extends StatelessWidget{
@override
Widget build(BuildContext context) {
  return(
    Scaffold(
backgroundColor: Colors.lightBlueAccent,

appBar: AppBar(
  title: Text("MiMascota"),
),
body: 
Container(
width: double.infinity,
color: Colors.lightBlue,
child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
Text("MiMascota: La app para conocer aun mas a tu mascota"),

//xd

Row(children: [

//BOTON 1

  MaterialButton(
elevation: 10.0,
minWidth: 100.0,
height: 100.0,
color: Theme.of(context).primaryColor,
shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(18.0),
),
child: Text(
  'Mi Mascota',
  style: TextStyle(
    color:Colors.white,
    fontSize: 20.0
  ),
),onPressed: (){  
 Navigator.of(context).push(MaterialPageRoute(
   builder: (context) => pantalla2(),
 ));
   },
  ),
//BOTON 2
MaterialButton(
elevation: 10.0,
minWidth: 100.0,
height: 100.0,
color: Theme.of(context).primaryColor,
shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(18.0),
),
child: Text(
  'Consejos Para Tu Mascota',
  style: TextStyle(
    color:Colors.white,
    fontSize: 20.0
  ),
),onPressed: (){

 Navigator.of(context).push(MaterialPageRoute(
   builder: (context) => consejos(),
 ));

},

  ),

MaterialButton(
elevation: 10.0,
minWidth: 100.0,
height: 100.0,
color: Theme.of(context).primaryColor,
shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(18.0),
),
child: Text(
  'Registro',
  style: TextStyle(
    color:Colors.white,
    fontSize: 20.0
  ),
),onPressed: (){

 Navigator.of(context).push(MaterialPageRoute(
   builder: (context) => Registro(),
 ));

},),

],
),
//xd
],),
),



    )
  ) ;
}


}


class pantalla2 extends StatelessWidget{
@override
Widget build(BuildContext context) {
  return (
    Scaffold(
      
      appBar: AppBar(title: Text("Mi Mascota")),
      body: Column(
children: [
  Text("Aqui encontraras los datos de tu mascota", style: TextStyle(color: Colors.lightGreen),)
],

      ),
    )
  );
}

}

class consejos extends StatelessWidget{
@override
Widget build(BuildContext context) {
  return (
    Scaffold(
      
      appBar: AppBar(title: Text("Consejos para mascotas")),
      body: Column(

children: [
  
  Text("Aqui encontraras los datos de tu mascota", style: TextStyle(color: Colors.lightGreen,fontSize: 30.0  ),),
  Text("Una pelota y juguetes que puedan masticar. Deben ser objetos especiales para perro, porque los juguetes de humano se rompen al primer colmillazo (además, si tu mascota rompe un objeto y se traga los pedazos, puede enfermarse).", style: TextStyle(color: Colors.black38,fontSize: 17.0),),
  Text("También necesita educación. Sólo así podrá convivir durante muchos años con su familia humana, otras personas y los demás perros. Por cierto, no se vale ‘educar’ a gritos ni a golpes. Tu perro debe respetarte y quererte, no tenerte miedo.", style: TextStyle(color: Colors.black38,fontSize: 17.0),),

],
      ),
    )
  );
}

}

class Registro extends StatelessWidget{
String name;
String raza;

GlobalKey formKey = GlobalKey<FormState>();
@override
Widget build(BuildContext context) {
  return (
    Scaffold(
      
      appBar: AppBar(title: Text("Registrate")),
      body: Column(
children: [
  TextFormField(
    decoration: InputDecoration(labelText: "Nombre de tu mascota:"),
    onSaved: (value){
      name=value;
    },
    validator: (value){
      if(value.isEmpty){
        return("Llena este campo");
      }
    },
  ),

TextFormField(
    decoration: InputDecoration(labelText: "Raza de tu mascota:"),
    onSaved: (value){
      name=value;
    },
validator: (value){
      if(value.isEmpty){
        return("Llena este campo");
      }},
    ),




],

      ),
    )
  );
}

}

