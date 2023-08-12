String? nome;
void main(List<String> args) {
  var numero = 1;
  print(numero);
  numero += 2;
  print(numero);

  var numero2 = 2.0;
  numero2 /= 1.0;
  print(numero2);

  /* if (nome == null) {
    nome = 'Douglas Poma';
  } */
  nome ??= "Douglas Poma";
}
