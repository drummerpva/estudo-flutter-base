void main(List<String> args) {
  String idade = '38 anos';
  String? nome;

  try {
    // int.parse(idade);
    // nome!.toLowerCase();
    throw Exception('Erro lançado');
  } on FormatException catch (e, s) {
    print(e);
    print('Error ao converter idade');
    print(s);
  } on TypeError {
    print('Error de tipo ou null');
  } catch (error) {
    print(error);
  } finally {
    print('Sempre executado');
  }
}
