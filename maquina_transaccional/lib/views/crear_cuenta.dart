import 'package:flutter/material.dart';
import 'package:maquina_transaccional/views/menu_principal.dart';

final buttontyle = ElevatedButton.styleFrom(
      primary: Color.fromRGBO(171,196,170,1.0),
      onPrimary: Color.fromRGBO(103,93,80,1.0),
      
    );

class crear_cuenta extends StatelessWidget {
  const crear_cuenta({super.key});

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
              height: 40,
            ),
            Container(
              width: 200,
              height: 50,
              child: ElevatedButton(
                style: buttontyle,
                onPressed: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> menu_principal())
                  );
               },
                child: Text("Crear cuenta", style: TextStyle(fontSize: 20),)),
            ),
            const SizedBox(
              height: 20,
            ),
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
              height: 20,
            ),
            const Text("CREAR CUENTA", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Color.fromRGBO(103, 93, 80, 1.0))
            ),
            const SizedBox(
              width: 10,
              height: 40,
            ),
            texto_correo(),
            const SizedBox(
              width: 10,
              height: 20,
            ),
            textfield_correo(),
            const SizedBox(
              width: 10,
              height: 20,
            ),
            texto_usuario(),
            const SizedBox(
              width: 10,
              height: 20,
            ),
            textfield_nom_usu(),
            const SizedBox(
              width: 10,
              height: 20,
            ),
            texto_contrasena(),
            const SizedBox(
              width: 10,
              height: 20,
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

Widget texto_correo(){
  return const Text("Correo electrónico", 
              style: TextStyle(color: Color.fromRGBO(103, 93, 80, 1.0),
              fontSize: 18,
              fontWeight: FontWeight.bold
              )
            );

}

Widget textfield_correo(){
  return Container(
    width: 250,
    height: 50,
    child: const TextField(
      decoration: InputDecoration(
        hintText: "Ingrese el correo electrónico",
        fillColor: Colors.white,
        filled: true
      ),
    ),
  );

}