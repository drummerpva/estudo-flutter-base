void main(List<String> args) {
  final nome = 'Douglas Poma';
  var subStringNome = nome.substring(7);
  print(subStringNome);

  var subStringNome2 = nome.substring(0, 7);
  print(subStringNome2);

  var sexo = 'Masculino';
  if (sexo.toLowerCase().startsWith('mas')) {
    print("startsWith: Sexo masculino");
  }

  if (sexo.toLowerCase().contains('cul')) {
    print("contains: Sexo masculino");
  }

  var saudacao = "Olá $nome seu sexo é " + sexo;
  print(saudacao);

  var saudacao2 = "Olá ${nome.toUpperCase()} seu sexo é $sexo";
  print(saudacao2);

  var paciente = 'Douglas Smekatz Poma|90|Dev FullCyle Senior|SC';
  var dadosPaciente = paciente.split("|");
  for (var dado in dadosPaciente) {
    print(dado);
  }
  var pacientes = [
    'Douglas Smekatz Poma|90|Dev FullCyle Senior|SC',
    'Douglas Poma|99|Dev FullCyle|SC'
  ];
  for (var p in pacientes) {
    var dadoPaciente = p.split("|");
    var nomeSeparado = dadoPaciente[0].split(' ');
    print("Sr: ${nomeSeparado.last}");
  }
}
