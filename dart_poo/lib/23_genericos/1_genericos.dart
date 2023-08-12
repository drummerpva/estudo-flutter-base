void main(List<String> args) {
  List<int> lista = [1, 2];
  lista.add(1);

  Map<String, int> mapa = {};

  var caixaDeBolas = Caixa<Bola>();
  caixaDeBolas.adicionar(Bola());

  var caixaDeBonecas = Caixa<Boneca>();
  caixaDeBonecas.adicionar(Boneca());
}

class Caixa<I extends Item> {
  List<I> items = [];

  void adicionar(I item) {
    items.add(item);
  }

  List<I> getItems() {
    return items;
  }

  double alturaItem(int index) {
    return items[index].altura();
  }
}

abstract class Item {
  double altura();
}

class Bola implements Item {
  @override
  double altura() {
    return 10.2;
  }
}

class Boneca implements Item {
  @override
  double altura() {
    return 1.1;
  }
}

class Telefone {}
