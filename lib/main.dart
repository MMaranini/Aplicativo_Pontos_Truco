// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_returning_null_for_void, non_constant_identifier_names

import 'package:flutter/material.dart';

main() {
  runApp(TelaInicial());
}

class TelaInicial extends StatefulWidget {
  @override
  State<TelaInicial> createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  int pontnos = 0;
  int ponteles = 0;

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
                "$pontnos",
                style: TextStyle(
                  color: Colors.cyan,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ElevatedButton(
                onPressed: () => AddPontoNos(),
                child: Text(
                  "+ 1 Ponto",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () => MaisTresNos(),
                child: Text(
                  "+ 3 Pontos",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () => MenosPontoNos(),
                child: Text(
                  "- 1 Ponto",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Eles",
                style: TextStyle(
                  color: Colors.cyan,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "$ponteles",
                style: TextStyle(
                  color: Colors.cyan,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ElevatedButton(
                onPressed: () => AddPontoEles(),
                child: Text(
                  "+ 1 Ponto",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () => MaisTresEles(),
                child: Text(
                  "+ 3 Pontos",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () => MenosPontoEles(),
                child: Text(
                  "- 1 Ponto",
                  style: TextStyle(
                    color: Colors.black,
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

  AddPontoNos() {
    setState(() {
      pontnos++;
      if (pontnos >= 12) {
        pontnos = 0;
        ponteles = 0;
      }
    });
  }

  MenosPontoNos() {
    setState(() {
      pontnos--;
      if (pontnos <= 0) {
        pontnos = 0;
        ponteles = 0;
      }
    });
  }

  MaisTresNos() {
    setState(() {
      pontnos = pontnos + 3;
      if (pontnos >= 12) {
        pontnos = 0;
        ponteles = 0;
      }
    });
  }
  AddPontoEles() {
    setState(() {
      ponteles++;
      if (ponteles >= 12) {
        ponteles = 0;
        pontnos = 0;
      }
    });
  }

  MenosPontoEles() {
    setState(() {
      ponteles--;
      if (ponteles <= 0) {
        ponteles = 0;
        pontnos = 0;
      }
    });
  }

  MaisTresEles() {
    setState(() {
      ponteles = ponteles + 3;
      if (ponteles >= 12) {
        ponteles = 0;
        pontnos = 0;
      }
    });
  }
}
