import 'package:dart_poo/12_callable_class/enviar_email.dart';

void main(List<String> args) {
  var enviarEmail = EnviarEmail();
  enviarEmail.enviar("douglaspoma@yahoo.com");

  enviarEmail("douglaspoma@yahoo.com");
}
