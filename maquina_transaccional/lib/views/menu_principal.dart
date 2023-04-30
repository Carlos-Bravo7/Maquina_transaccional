import 'package:flutter/material.dart';
import 'package:maquina_transaccional/views/crear_cuenta.dart';
import 'package:maquina_transaccional/views/realizar_transaccion.dart';
import 'package:maquina_transaccional/views/ver_movimientos.dart';
import 'package:maquina_transaccional/views/consultar_saldo.dart';

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
        centerTitle: true,
        title: Text("Menú principal"),
        backgroundColor: Color.fromRGBO(103, 93, 80, 1.0),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              width: 10,
              height: 30,
             ),
            column_principal(),
            const SizedBox(
              width: 10,
              height: 15,
            ),
            Column(
              children: [
                row_images(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    //Botón consultar saldo 
                    Container(
                      width: 180,
                      height: 40,
                      child: ElevatedButton(
                        style: buttontyle,
                        onPressed: (){
                          Navigator.push(context,
                            MaterialPageRoute(builder: (context)=> const consultar_saldo())
                          );
                       },
                        child: const Text("Consultar saldo", style: TextStyle(fontSize: 15))
                      ),
                    ),
                    //Botón ver movimientos
                    Container(
                      width: 180,
                      height: 40,
                      child: ElevatedButton(
                        style: buttontyle,
                        onPressed: (){
                          Navigator.push(context,
                            MaterialPageRoute(builder: (context)=> const ver_movimientos())
                          );
                       },
                        child: const Text("Ver movimiento", style: TextStyle(fontSize: 15))
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 10,
                  height: 30,
                ),
                //Botón realizar transacción
                Container(
                  width: 100,
                  height: 100,
                  child: Image.asset('assets/transferencia.png'),
                ),
                Container(
                      width: 180,
                      height: 40,
                      child: ElevatedButton(
                        style: buttontyle,
                        onPressed: (){
                          Navigator.push(context,
                            MaterialPageRoute(builder: (context)=> const realizar_transaccion())
                          );
                       },
                        child: Center(child: const Text("Realizar transacción", style: TextStyle(fontSize: 15)))
                      ),
                    ),

              ],
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

Widget column_principal(){
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisSize: MainAxisSize.min,
      children: const [
        Text("Bienvenido: ", 
            style: TextStyle(color: Color.fromRGBO(103, 93, 80, 1.0),
            fontSize: 30,
            fontWeight: FontWeight.bold
            )
        ),
        SizedBox(
          width: 10,
          height: 10,
        ),
        Text("*Nombre del usuario*", 
            style: TextStyle(color: Color.fromRGBO(103, 93, 80, 1.0),
            fontSize: 24,
            fontWeight: FontWeight.bold
            )
        ),
        SizedBox(
          width: 10,
          height: 25,
        ),
        Text("¿En qué le podemos ayudar hoy?", 
            style: TextStyle(color: Color.fromRGBO(103, 93, 80, 1.0),
            fontSize: 18,
            fontWeight: FontWeight.normal
            )
        ),

    ],
  );

}

Widget row_images (){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    mainAxisSize: MainAxisSize.max,
    children: [
      Container(
        width: 120,
        height: 120,
        child: Image.asset('assets/saldo.png'),
      ),
      Container(
        padding: EdgeInsets.all(20.0),
        width: 120,
        height: 120,
        child: Image.asset('assets/ver_transac.png'),
      )
      
    ],
  );

}