import '../model/carro.dart';

main() {
  var c1 = Carro(320, 100);

  while (!c1.estaNoLimite()) {
    print('A velocidade atual é ${c1.acelerar()}Km/h');
  }
  print('O carro chegou no máximo de sua velocidade ${c1.velocidadeAtual}Km/h');

  while (!c1.estaParado()) {
    print('A velocidade atual é ${c1.frear()} Km/h');
  }
  c1.velocidadeAtual = 500;
  //c1.velocidadeAtual = 320;
  c1.velocidadeAtual = 100;
  print('O carro parou com velocidade ${c1.velocidadeAtual} Km/h');
}
