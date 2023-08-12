void main(List<String> args) {
  final idade = 99;

  print('Sua idade é ${idade.toString()} / $idade');

  if (idade.isNegative) {
    print("Idade inválida");
  }

  final valorDouble = 10.65;
  print(valorDouble.round());
  print(valorDouble.roundToDouble());

  final valorString = '30';

  final valorInt = int.parse(valorString);
  final valorInt2 = int.tryParse('abc');
  print(valorInt);
  print(valorInt2);

  final precoCamiseta = 30.27873;
  print(precoCamiseta.toStringAsFixed(3));
}
