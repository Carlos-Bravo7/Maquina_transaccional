import 'package:flutter/material.dart';
import 'package:maquina_transaccional/views/crear_cuenta.dart';

final buttontyle = ElevatedButton.styleFrom(
      primary: Color.fromRGBO(171,196,170,1.0),
      onPrimary: Color.fromRGBO(103,93,80,1.0),
      
    );

class menu_principal extends StatelessWidget {
  const menu_principal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(243, 222, 186, 1.0),
      appBar: AppBar(
        title: Text("Menu principal"),
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

          ],
        )
      ),
    );
  }
}


