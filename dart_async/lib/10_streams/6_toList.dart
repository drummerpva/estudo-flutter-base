void main(List<String> args) async {
  final interval = Duration(milliseconds: 300);
  var stream = Stream<int>.periodic(interval, callback);

  stream = stream.take(5);
  final data = await stream.toList();
  print(data);
}

int callback(int value) {
  return (value + 1) * 2;
}
