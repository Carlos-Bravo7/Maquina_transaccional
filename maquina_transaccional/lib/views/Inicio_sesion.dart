import 'package:flutter/material.dart';
import 'package:maquina_transaccional/views/crear_cuenta.dart';

final buttontyle = ElevatedButton.styleFrom(
      primary: Color.fromRGBO(171,196,170,1.0),
      onPrimary: Color.fromRGBO(103,93,80,1.0),
      
    );

class inicio_sesion extends StatelessWidget {
  const inicio_sesion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(243, 222, 186, 1.0),
      appBar: AppBar(
        title: Text(""),
        backgroundColor: Color.fromRGBO(103, 93, 80, 1.0),
      ),
      body: Center(
        child: Column(
          children: [
            cuerpo(),
            const SizedBox(
              width: 10,
              height: 60,
            ),
            Container(
              width: 200,
              height: 60,
              child: ElevatedButton(
                style: buttontyle,
                onPressed: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> crear_cuenta())
                  );
               },
                child: Text("Iniciar sesión", style: TextStyle(fontSize: 20),)),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text("¿Necesitas ayuda?, contáctanos dando clic aquí", style: TextStyle(color: Color.fromRGBO(103, 93, 80, 1.0)))
          ],
        )
      ),
    );
  }
}

Widget cuerpo(){
  return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: 10,
              height: 30,
            ),
            const Text("INICIO DE SESIÓN", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Color.fromRGBO(103, 93, 80, 1.0))
            ),
            const SizedBox(
              width: 10,
              height: 50,
            ),
            texto_usuario(),
            const SizedBox(
              width: 10,
              height: 30,
            ),
            textfield_nom_usu(),
            const SizedBox(
              width: 10,
              height: 30,
            ),
            texto_contrasena(),
            const SizedBox(
              width: 10,
              height: 30,
            ),
            textfield_contrasena()
          ],
        );
}

Widget texto_usuario(){
  return const Text("Nombre de usuario", 
              style: TextStyle(color: Color.fromRGBO(103, 93, 80, 1.0),
              fontSize: 18,
              fontWeight: FontWeight.bold
              )
            );

}

Widget textfield_nom_usu(){
  return Container(
    width: 250,
    height: 50,
    child: const TextField(
      decoration: InputDecoration(
        hintText: "Ingrese el usuario",
        fillColor: Colors.white,
        filled: true
      ),
    ),
  );

}

Widget texto_contrasena(){
  return const Text("Contraseña", 
              style: TextStyle(color: Color.fromRGBO(103, 93, 80, 1.0),
              fontSize: 18,
              fontWeight: FontWeight.bold
              )
            );

}

Widget textfield_contrasena(){
  return Container(
    width: 250,
    height: 50,
    child: const TextField(
      decoration: InputDecoration(
        hintText: "Ingrese la contraseña",
        fillColor: Colors.white,
        filled: true
      ),
    ),
  );

}

