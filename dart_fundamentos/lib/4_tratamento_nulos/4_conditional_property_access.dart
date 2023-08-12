String? nomeCompleto;
int? idade;

void main(List<String> args) {
  var nomeCompletoLocal = nomeCompleto ?? "Nome não preenchido";
  print(nomeCompletoLocal.toUpperCase());
  print(nomeCompleto?.toUpperCase() ?? '');
  print(idade?.round() ?? '');
}
