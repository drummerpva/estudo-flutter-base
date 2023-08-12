void main(List<String> args) async {
  final interval = Duration(milliseconds: 300);
  var stream = Stream<int>.periodic(interval, callback);

  stream = stream.take(5);

  stream.listen((int numero) {
    print("Listen value: $numero");
  });

  print("FIM");
}

int callback(int value) {
  return (value + 1) * 2;
}
