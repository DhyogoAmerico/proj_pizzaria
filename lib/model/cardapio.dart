class cardapio {
  final String nome;
  final String imgPizza;
  final String ingredientes;
  final String valor;

  cardapio(this.nome, this.imgPizza, this.ingredientes, this.valor);

  List cardapios() {
    List<cardapio> list = new List<cardapio>();
    list.add(new cardapio('Moda da casa', 'images/pizza1.jpg',
        'Mussarela, calabresa, alho, cheddar e azeitonas.', '32,00'));
  }
}
