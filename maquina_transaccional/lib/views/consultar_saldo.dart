import 'package:flutter/material.dart';
import 'package:maquina_transaccional/views/realizar_transaccion.dart';
import 'package:maquina_transaccional/views/ver_movimientos.dart';

final buttontyle = ElevatedButton.styleFrom(
      primary: Color.fromRGBO(171,196,170,1.0),
      onPrimary: Color.fromRGBO(103,93,80,1.0),
      
    );

class consultar_saldo extends StatelessWidget {
  const consultar_saldo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(243, 222, 186, 1.0),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Consultar saldo"),
        backgroundColor: Color.fromRGBO(103, 93, 80, 1.0),
      ),
      body: Center(
        child: Column(
          children: [
            colm_cuerpo(),
            const SizedBox(
              width: 10,
              height: 120,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                    style: buttontyle,
                    onPressed: (){
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context)=> realizar_transaccion())
                      );
                   },
                    child: Center(child: Text("hacer transacción", style: TextStyle(fontSize: 20),))),
                ),
                Container(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                    style: buttontyle,
                    onPressed: (){
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context)=> ver_movimientos())
                      );
                   },
                    child: Text("ver movimientos", style: TextStyle(fontSize: 20),)),
                ),
              ],
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

Widget colm_cuerpo(){
  return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            SizedBox(
              width: 10,
              height: 40,
            ),
            Text("SALDO ACTUAL DE LA CUENTA:", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Color.fromRGBO(103, 93, 80, 1.0))
            ),
            SizedBox(
              width: 10,
              height: 100,
            ),
            Text("400.000", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 70, color: Color.fromRGBO(103, 93, 80, 1.0)))
            
          ],
        );
}


