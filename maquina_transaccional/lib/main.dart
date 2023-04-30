//Importar los widgets
import'package:flutter/material.dart';
import 'package:maquina_transaccional/views/Inicio_sesion.dart';

//Creamos el main del programa 
void main() => runApp(Maquina());

//Creamos el Widget Maquina
class Maquina extends StatelessWidget {
  const Maquina({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Maquina transaccional',
      home: Inicio(),
    );
  }
}

//Widget Inicio 
class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {

    final stylebutton = ElevatedButton.styleFrom(
      primary: Color.fromRGBO(171,196,170,1.0),
      onPrimary: Color.fromRGBO(103,93,80,1.0),
      
    );

    return Scaffold(
      backgroundColor: Color.fromRGBO(243, 222, 186, 1.0),
      appBar: AppBar(//Es otro widget que igual nos pide cosas 
        backgroundColor: Color.fromRGBO(103, 93, 80, 1.0),
        //title: Text("Máquina Transaccional"),
      ),
      body: 
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              width: 250,
              height: 250,
              child:  Image.asset('assets/arbol_logo.png'),
            ),
           Text("Bienvenido a nuestra app", style: TextStyle(color: Color.fromRGBO(103, 93, 80, 1.0), fontWeight: FontWeight.bold, fontSize: 24)),
           SizedBox(
            width: 30,
            height: 50 ,
           ),
           Container(
            width: 200,
            height: 70,
             child: ElevatedButton(
              style: stylebutton,
              onPressed: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context)=> inicio_sesion())
                );
             },
              child: Text("Iniciar sesión", style: TextStyle(fontSize: 20),)),
           ),
           SizedBox(
            height: 80,
           ),
            Text("¿Necesitas ayuda?, contáctanos dando clic aquí", style: TextStyle(color: Color.fromRGBO(103, 93, 80, 1.0)),)
          ],
        ),
      )
    );
  }
} 