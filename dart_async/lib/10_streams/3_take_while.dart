void main(List<String> args) async {
  final interval = Duration(milliseconds: 300);
  var stream = Stream<int>.periodic(interval, callback);

  stream = stream.takeWhile((int numero) => numero < 10);
  await for (var i in stream) {
    print(i);
  }
}

int callback(int value) {
  return (value + 1) * 2;
}
