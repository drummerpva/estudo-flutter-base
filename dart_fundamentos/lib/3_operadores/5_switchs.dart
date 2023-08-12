void main(List<String> args) {
  const diaDaSemana = 2;
  var diaDaSemanaStr = '';

  switch (diaDaSemana) {
    case 0:
      diaDaSemanaStr = 'Domingo';
      break;
    case 1:
      diaDaSemanaStr = 'Domingo';
      break;
    case 2:
      diaDaSemanaStr = 'Domingo';
      break;
    case 3:
      diaDaSemanaStr = 'Domingo';
      break;
    case 4:
      diaDaSemanaStr = 'Domingo';
      break;
    case 5:
      diaDaSemanaStr = 'Domingo';
      break;
    case 6:
      diaDaSemanaStr = 'Domingo';
      break;
    default:
      diaDaSemanaStr = 'inválido';
  }
  print("Dia da semana: $diaDaSemanaStr");

  const idade = 99;
  switch (idade) {
    case 18:
    case 19:
      print("Maior");
      break;
    default:
      print("Menor");
  }
}
