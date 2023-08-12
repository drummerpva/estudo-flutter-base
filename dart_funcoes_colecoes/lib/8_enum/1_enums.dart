void main(List<String> args) {
  var cor = Cores.roxo;

  if (cor == Cores.vermelho) {
    print('Vermeio');
  }
  print(Cores.azul.name);
  var azul = Cores.values.byName('azul');
  print(azul);

  var coresMap = Cores.values.asMap();
  print(coresMap);
  var coresMapName = Cores.values.asNameMap();
  print(coresMapName);

  // Cores.values.byName('branco'); // Exception
  var corBranco = coresMapName['branco'];
  print(corBranco);

  switch (cor) {
    case Cores.azul:
      // TODO: Handle this case.
      break;
    case Cores.vermelho:
      // TODO: Handle this case.
      break;
    case Cores.roxo:
      // TODO: Handle this case.
      break;
    case Cores.preto:
      // TODO: Handle this case.
      break;
  }
}

enum Cores { azul, vermelho, roxo, preto }
