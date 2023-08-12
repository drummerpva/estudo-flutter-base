void main(List<String> args) {
  print("Inicio");
  m2();
  p2();
  for (var i = 0; i <= 5; i++) {
    print(i);
  }
  print("Finalizou");
}

void m2() {
  print("funcao m2");
}

void p2() {
  Future.delayed(Duration(seconds: 2), () {
    print("p2 executou");
  });
}
