import 'package:flutter/material.dart';
final buttontyle = ElevatedButton.styleFrom(
      primary: const Color.fromRGBO(171,196,170,1.0),
      onPrimary: const Color.fromRGBO(103,93,80,1.0),
      
    );

class ver_movimientos extends StatelessWidget {
  const ver_movimientos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(243, 222, 186, 1.0),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Ver movimientos"),
        backgroundColor: const Color.fromRGBO(103, 93, 80, 1.0),
      ),
      body: Center(
        child: Column(
          children:[
            const SizedBox(
              height: 10
            ),
            const Text("Numero de cuenta: 723683233482",style: TextStyle(color: Color.fromRGBO(103, 93, 80, 1.0),
                fontSize: 18,
                fontWeight: FontWeight.normal
                ) ),
            const SizedBox(
              height: 10
            ),
            const Text("Saldo que esta disponible: 400.000",style: TextStyle(color: Color.fromRGBO(103, 93, 80, 1.0),
                    fontSize: 18,
                    fontWeight: FontWeight.normal
                    ) 
            ),
            const SizedBox(
              height: 60
            ),
            Text("LISTA DE MOVIMIENTOS",style: TextStyle(color: Color.fromRGBO(103, 93, 80, 1.0),
                fontSize: 28,
                fontWeight: FontWeight.bold
              ) 
            ),  
            SizedBox(
              height: 20,
            ),
            Container(
              width: 300,
              child: DropdownButton(items: const [
                  DropdownMenuItem(child: Text("En el ultimo mes", style: TextStyle(color: Colors.black),), value: "Dash",),
                  DropdownMenuItem(child: Text("En el ultimo año"), value: "ano",)
            
                ],
                onChanged: something,
                value: "Dash",
                dropdownColor: Colors.white,
                alignment: Alignment.center,
                isExpanded: true,
                style: TextStyle(color: Colors.black),
                ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              children: [
                  Container(
              width: 170,
              height: 50,
              child: ElevatedButton(
                style: buttontyle,
                onPressed: (){   
               },
                child: Text("Fecha", style: TextStyle(fontSize: 20),)),
            ),
            Container(
              width: 170,
              height: 50,
              child: ElevatedButton(
                style: buttontyle,
                onPressed: (){
               },
                child: Text("Detalle", style: TextStyle(fontSize: 20),)),
            ),
            Container(
              width: 170,
              height: 50,
              child: ElevatedButton(
                style: buttontyle,
                onPressed: (){
               },
                child: Text("Monto", style: TextStyle(fontSize: 20),)),
            ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  height: 30 ,
                  width: 170,
                  color: Colors.white,
                  child: Text("20/2/2022", style: TextStyle(color: Color.fromRGBO(103, 93, 80, 1.0), fontSize: 20), textAlign: TextAlign.center,),
                ),
                Container(
                  height: 30 ,
                  width: 170,
                  color: Colors.white,
                  child: Text("Transferencia", style: TextStyle(color: Color.fromRGBO(103, 93, 80, 1.0), fontSize: 20), textAlign: TextAlign.center,),
                ),
                Container(
                  height: 30 ,
                  width: 170,
                  color: Colors.white,
                  child: Text("-100.000", style: TextStyle(color: Colors.red, fontSize: 20), textAlign: TextAlign.center,),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  height: 30 ,
                  width: 170,
                  color: Colors.white,
                  child: Text("19/2/2022", style: TextStyle(color: Color.fromRGBO(103, 93, 80, 1.0), fontSize: 20), textAlign: TextAlign.center,),
                ),
                Container(
                  height: 30 ,
                  width: 170,
                  color: Colors.white,
                  child: Text("Depósito", style: TextStyle(color: Color.fromRGBO(103, 93, 80, 1.0), fontSize: 20), textAlign: TextAlign.center,),
                ),
                Container(
                  height: 30 ,
                  width: 170,
                  color: Colors.white,
                  child: Text("500.000", style: TextStyle(color: Colors.green, fontSize: 20), textAlign: TextAlign.center,),
                ),
              ],
            )

             
          ],
        ),
      ) 
    );
  }
}

Widget prim_colm(){
  return Column(
    //mainAxisAlignment: MainAxisAlignment.start,
    //crossAxisAlignment: CrossAxisAlignment.start,
    children: const [
      Text("Numero de cuenta: 7236832342",style: TextStyle(color: Color.fromRGBO(103, 93, 80, 1.0),
              fontSize: 18,
              fontWeight: FontWeight.bold
              ) ),
      SizedBox(
        height: 10,
        width: 10,
      ),
      Text("Saldo disponible: 400.000",style: TextStyle(color: Color.fromRGBO(103, 93, 80, 1.0),
              fontSize: 18,
              fontWeight: FontWeight.bold
              ) )
    ],
  );
}

void something(String? selectedvalue){

}