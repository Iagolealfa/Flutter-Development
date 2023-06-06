import 'package:flutter/material.dart';

import 'package:projeto_perguntas/questionario.dart';

import 'package:projeto_perguntas/resultado.dart';

main() => runApp(PerguntaApp());

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() => _PerguntaAppState();
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  int _pontuacaoTotal = 0;

  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }
  }

  void _reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  final _perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas': [
        {
          'texto': 'Preto',
          'Pontuacao': 7,
        },
        {
          'texto': 'Azul',
          'Pontuacao': 10,
        },
        {
          'texto': 'Verde',
          'Pontuacao': 5,
        },
        {
          'texto': 'Branco',
          'Pontuacao': 2,
        },
      ]
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas': [
        {
          'texto': 'Cachorro',
          'Pontuacao': 7,
        },
        {
          'texto': 'Gato',
          'Pontuacao': 10,
        },
        {
          'texto': 'Cobra',
          'Pontuacao': 5,
        },
        {
          'texto': 'Escorpião',
          'Pontuacao': 2,
        },
      ]
    },
    {
      'texto': 'Qual é o seu amigo favorito?',
      'respostas': [
        {
          'texto': 'Igor',
          'Pontuacao': 7,
        },
        {
          'texto': 'Rafael',
          'Pontuacao': 10,
        },
        {
          'texto': 'Binho',
          'Pontuacao': 5,
        },
        {
          'texto': 'Allan',
          'Pontuacao': 2,
        },
      ]
    },
  ];
  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaselecionada: _perguntaSelecionada,
                responder: _responder)
            : Resultado(_pontuacaoTotal, _reiniciarQuestionario),
      ),
    );
  }
}
