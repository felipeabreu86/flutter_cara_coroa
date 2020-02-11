import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_cara_coroa/telaJogo.dart';
import 'package:flutter_cara_coroa/util/enums.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 150),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              //logotipo
              Image.asset('images/logo.png'),
              //botão jogar
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: GestureDetector(
                  onTap: () {
                    var index = Random().nextInt(CaraCoroa.values.length);
                    var resultado = CaraCoroa.values[index];
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TelaJogo(resultado),
                      ),
                    );
                  },
                  child: Image.asset('images/botao_jogar.png'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
