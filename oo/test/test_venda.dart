import '../model/cliente.dart';
import '../model/produto.dart';
import '../model/venda.dart';
import '../model/venda_item.dart';

void main() {
  var venda = Venda(
      cliente: Cliente(nome: 'Fraciso', cpf: '123.423.213-22'),
      itens: <VendaItem>[
        VendaItem(
            quantidade: 10,
            produto:
                Produto(codigo: 1, nome: 'Caneta', preco: 5.7, desconto: 0.5)),
        VendaItem(
          quantidade: 8,
          produto:
              Produto(codigo: 2, nome: 'Caderno', preco: 20.1, desconto: 0.2),
        ),
        VendaItem(
            quantidade: 100,
            produto: Produto(
                codigo: 23, nome: 'Borracha', preco: 2.5, desconto: 0.1))
      ]);
  print('O valor da venda é : ${venda.valorTotal}');
  print('Preço do primeiro produto é : ${venda.itens[0].preco}');
}
