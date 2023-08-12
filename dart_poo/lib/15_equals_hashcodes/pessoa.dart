// ignore_for_file: public_member_api_docs, sort_constructors_first
class Pessoa {
  String nome;
  String email;
  Pessoa(
    this.nome,
    this.email,
  );

  @override
  bool operator ==(covariant Pessoa other) {
    if (identical(this, other)) return true;

    return other.nome == nome && other.email == email;
  }

  @override
  int get hashCode => nome.hashCode ^ email.hashCode;
  /* @override
  bool operator ==(Object other) {
    if (identical(this, other)) true;
    if (other is Pessoa) {
      if (other.nome != nome) return false;
      if (other.email != email) return false;
      return true;
    } else {
      return false;
    }
  } */

  /* @override
  bool operator ==(Object other) {
    if (identical(this, other)) true;
    return other is Pessoa && other.nome == nome && other.email == email;
  }

  @override
  int get hashCode {
    return nome.hashCode ^ email.hashCode;
  } */

  @override
  String toString() => 'Pessoa(nome: $nome, email: $email)';
}
