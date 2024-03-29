import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_cara_coroa/Resultado/resultado.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _exibirResultado() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Resultado(Random().nextInt(2)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: Image.asset("assets/images/logo.png"),
                    ),
                    GestureDetector(
                      onTap: _exibirResultado,
                      child: Image.asset("assets/images/botao_jogar.png"),
                    ),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
