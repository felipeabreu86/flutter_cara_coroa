import 'package:flutter/material.dart';
import 'package:flutter_cara_coroa/util/enums.dart';

class TelaJogo extends StatefulWidget {
  CaraCoroa resultado;

  TelaJogo(this.resultado);

  @override
  _TelaJogoState createState() => _TelaJogoState();
}

class _TelaJogoState extends State<TelaJogo> {
  @override
  Widget build(BuildContext context) {
    // definicao da imagem da moeda
    var caminhoImagem = "images/moeda_cara.png";
    if (widget.resultado == CaraCoroa.coroa) {
      caminhoImagem = "images/moeda_coroa.png";
    }
    // layout da tela
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.asset(caminhoImagem),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context); // fechar a tela
                  },
                  child: Image.asset('images/botao_voltar.png'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
