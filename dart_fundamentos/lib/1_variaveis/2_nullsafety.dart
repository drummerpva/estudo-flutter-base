String nomeCompletoSuperior = "Douglas Poma";
String? nomeCompletoSuperiorOpcional;
void main() {
  String? nomeCompleto;
  nomeCompleto = "completo";

  nomeCompletoSuperiorOpcional = "Teste";

  print(nomeCompletoSuperior.length);
  print(nomeCompleto.length);
  print(nomeCompletoSuperiorOpcional?.length);
}
