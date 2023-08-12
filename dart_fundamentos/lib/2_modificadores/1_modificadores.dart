void main(List<String> args) {
  var nomeCompleto = 'Douglas';
  print(nomeCompleto);
  nomeCompleto = 'Douglas Poma';
  print(nomeCompleto);

  //final - usar o máximo possível (imutabilidade), em tempo de execução
  final nomeCompletoFinal = 'Douglas Poma';
  final nomeCompletoFinal2 = nomeCompleto;
  // nomeCompletoFinal = 'Douglas'; //imutavel
  final finalNaoInicializada;
  finalNaoInicializada = "inicializada agora";

  //const imutável em tempo de compilação
  const nomeCompletoConst = 'Douglas Poma';
  // const nomeCompletoConst2 = nomeCompleto; //apenas aceita de outra constante, verificado em momento de compilação
}
