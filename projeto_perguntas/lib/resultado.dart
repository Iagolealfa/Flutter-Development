import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() reiniciarquestionario;

  Resultado(this.pontuacao, this.reiniciarquestionario);

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'Boa';
    } else if (pontuacao < 12) {
      return 'Ótimo';
    } else if (pontuacao < 16) {
      return 'Tirou onda pae';
    } else {
      return 'Você é barril dobrado pivete';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(fontSize: 20),
          ),
        ),
        TextButton(
          onPressed: reiniciarquestionario,
          style: TextButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
          ),
          child: Text('Reiniciar?', style: TextStyle(fontSize: 20)),
        )
      ],
    );
  }
}
