import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    ));

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _fraseEscolhida = "Clique abaixo para gerar uma frase";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Frases do dia"),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Container(
            //width: double.infinity,
            padding: EdgeInsets.all(16),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("images/logo.png"),
                Text(
                  _fraseEscolhida,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 25,
                      fontStyle: FontStyle.italic,
                      color: Colors.black),
                ),
                RaisedButton(
                  child: Text(
                    "Nova frase",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  color: Colors.green,
                  onPressed: () {
                    _gerarFrase();
                  },
                ),
              ],
            ),
          ),
        ));
  }

  void _gerarFrase() {

    var _frases = [
      "Penso, logo desisto","O caminh é longo, mas a derrota é certa",
      "A vida é um conto de falhas",
      "Voce não pode mudar seu passado, Mas pode estragar seu futuro",
      "Seja o protagonista do seu fracasso0",
      "É preciso descoisar as coisas que estão coisadas",
      "Seu maior problema é voce",
      "Gente feia é igual gente bonita, só que feia",
      "O recomeço é a oportunidade de um novo fracasso",
      "A vida te derruba hoje preparando a queda de amanhã",
      "Amanha tudo pode acontecer, inclusive NADA",
      "Desistir é para os fracos, o ideal é nem tentar",
      "Vai ser dificil, vai ser cansativo, vai levar tempo, e não vai valer a pena"
    ];

    int _random = 0;

    _random = Random().nextInt(_frases.length);

    setState(() {
      _fraseEscolhida = _frases[_random];
    });
  }
}
