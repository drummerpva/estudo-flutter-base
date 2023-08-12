void main(List<String> args) {
  print(somaInteiros(10, 10));
  () {
    print("Função anônima");
  }();

  var nome = '';
  var idade = 99;
  var funcaoQualquer = () {
    print("Chamou função");
    return 1000;
  };

  print(nome.runtimeType);
  print(idade.runtimeType);
  print(funcaoQualquer.runtimeType);
  print(funcaoQualquer());

  chamarUmaFuncaoDeUmParametro(
    (nome) {
      print("nome: $nome");
    },
  );
}

int somaInteiros(int numero1, int numero2) => numero1 + numero2;
void somaInteirosVoid(int numero1, int numero2) => numero1 + numero2;

void chamarUmaFuncaoDeUmParametro(Function(String nome) funcaoQueRecebeNome) {
  var nomeCompleto = 'Douglas Poma';
  funcaoQueRecebeNome(nomeCompleto);
}

typedef FuncaoQueRecebeNome = void Function(String nome);

void chamarUmaFuncaoDeUmParametro2(FuncaoQueRecebeNome funcaoQueRecebeNome) {
  var nomeCompleto = 'Douglas Poma';
  funcaoQueRecebeNome(nomeCompleto);
}
