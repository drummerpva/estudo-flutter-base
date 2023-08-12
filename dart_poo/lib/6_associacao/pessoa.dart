class Pessoa {
  String? nome;
  Endereco endereco = Endereco(); //Obrigatório é compossição
  CPF cpf = CPF();

  //agregação, não é obrigatório
  Telefone? telefone;
}

class CPF {}

class Endereco {}

class Telefone {}
