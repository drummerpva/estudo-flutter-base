import 'dart:async';

void main(List<String> args) async {
  print("Main");

  scheduleMicrotask(() => print("Microtask 1"));
  await Future.delayed(Duration(seconds: 1), () => print("Future #1 delayed"));
  await Future(() => print("Future #2"));
  await Future(() => print("Future #3"));

  scheduleMicrotask(() => print("Microtask 2"));

  print("Fim Main");
}
