import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {
  // 0 = Cara | 1 = Coroa
  final int jogada;

  const Resultado(this.jogada);

  @override
  _ResultadoState createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  @override
  Widget build(BuildContext context) {
    var _caminhoImagem = "assets/images/moeda_cara.png";

    if (widget.jogada == 1) {
      _caminhoImagem = "assets/images/moeda_coroa.png";
    }

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
                    child: Image.asset(_caminhoImagem),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Image.asset("assets/images/botao_voltar.png"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
