// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_returning_null_for_void

import 'package:flutter/material.dart';

main() {
  runApp(TelaInicial());
}

class TelaInicial extends StatefulWidget {

  @override
  State<TelaInicial> createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  int cont = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Marcador de truco",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Color.fromARGB(255, 74, 4, 107),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Nós",
                style: TextStyle(
                  color: Colors.cyan,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "$cont",
                style: TextStyle(
                  color: Colors.cyan,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ElevatedButton(
                onPressed: () => AddPonto(),
                child: Text(
                  "+ 1 Ponto",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30, 
                  ), 
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  AddPonto() {
    setState(() {
      cont++;
      if(cont == 12){
        cont = 0;
      }
    });
  }
}
