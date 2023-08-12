void main(List<String> args) async {
  final interval = Duration(milliseconds: 300);
  var stream = Stream<int>.periodic(interval, callback);

  stream = stream.skipWhile((int num) => num <= 6);
  stream = stream.take(5);
  await for (var i in stream) {
    print(i);
  }
}

int callback(int value) {
  return (value + 1) * 2;
}
