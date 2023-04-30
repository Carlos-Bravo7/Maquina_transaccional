// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
final buttontyle = ElevatedButton.styleFrom(
      primary: const Color.fromRGBO(171,196,170,1.0),
      onPrimary: const Color.fromRGBO(103,93,80,1.0),
      
    );

class realizar_transaccion extends StatelessWidget {
  const realizar_transaccion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(243, 222, 186, 1.0),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Realizar transacción"),
        backgroundColor: const Color.fromRGBO(103, 93, 80, 1.0),
      ),
      body: Center(
        child: Column(
          children: [
            colm_cuerpo(),
            const SizedBox(
              width: 10,
              height: 70,
            ),
            Container(
            width: 200,
            height: 50,
            child: ElevatedButton(
            style: buttontyle,
            onPressed: (){
              //Navigator.push(context,
              //MaterialPageRoute(builder: (context)=> const realizar_transaccion())
              //);
            },
              child: const Center(child: Text("Transferir", style: TextStyle(fontSize: 20),))),
            ),
          ],
        )
      ),
    );
  }
}

Widget colm_cuerpo(){
  return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: 10,
              height: 40,
            ),
            const Text("Transferir dinero", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Color.fromRGBO(103, 93, 80, 1.0))
            ),
            const SizedBox(
              width: 10,
              height: 50,
            ),
            texto_nro_cuenta(),
            const SizedBox(
              width: 10,
              height: 20,
            ),
            textfield_nro_cuenta(),
            const SizedBox(
              width: 10,
              height: 40,
            ),
            texto_cant_transferir(),
            const SizedBox(
              width: 10,
              height: 20,
            ),
            textfield_cant_transferir()
          ],
        );
}

Widget texto_nro_cuenta(){
  return const Text("Número de cuenta de destino", 
              style: TextStyle(color: Color.fromRGBO(103, 93, 80, 1.0),
              fontSize: 18,
              fontWeight: FontWeight.bold
              )
            );

}

Widget textfield_nro_cuenta(){
  return Container(
    width: 250,
    height: 50,
    child: const TextField(
      decoration: InputDecoration(
        hintText: "Ingrese el numero de cuenta",
        fillColor: Colors.white,
        filled: true
      ),
    ),
  );

}

Widget texto_cant_transferir(){
  return const Text("Cantidad a transferir", 
              style: TextStyle(color: Color.fromRGBO(103, 93, 80, 1.0),
              fontSize: 18,
              fontWeight: FontWeight.bold
              )
            );

}

Widget textfield_cant_transferir(){
  return Container(
    width: 250,
    height: 50,
    child: const TextField(
      decoration: InputDecoration(
        hintText: "Ingrese un cantidad",
        fillColor: Colors.white,
        filled: true
      ),
    ),
  );

}