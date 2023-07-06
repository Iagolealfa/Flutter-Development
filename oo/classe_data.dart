class Data {
  int dia;
  int mes;
  int ano;

  Data([this.dia = 1, this.mes = 1, this.ano = 1970]) {}
  Data.com({this.dia = 1, this.mes = 1, this.ano = 1970});
  Data.ultimoDiaAno({this.dia = 1, this.mes = 1, this.ano = 1970}) {
    dia = 31;
    mes = 12;
  }

  String obterFormatada() {
    return '$dia/$mes/$ano';
  }

  @override
  String toString() {
    return obterFormatada();
  }
}

main() {
  var dataAniversario = new Data(3, 10, 2020);

  Data compraNatal = Data(23, 12, 2023);
  Data teste = Data(2, 2);
  print(teste);

  //print('${compraNatal.dia}/${compraNatal.mes}/${compraNatal.ano}');
  //print('${dataAniversario.dia}/${dataAniversario.mes}/${dataAniversario.ano}');
  compraNatal.obterFormatada();
  dataAniversario.obterFormatada();
  print('A data da compra do natal foi ${compraNatal.obterFormatada()}');
  print(
      'A data da compra do aniversário foi ${dataAniversario.obterFormatada()}');
  print(dataAniversario);

  print(Data.com(ano: 2030));
  var dataFinal = Data.com(dia: 20);
  print(dataFinal);
}
