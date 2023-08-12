import 'dart:io';

void main(List<String> args) async {
  var file = File('lib/9_files/files/file.txt');
  //Sincrona
  // var fileData = file.readAsStringSync();
  //Assincrona
  // var fileData = await file.readAsString();
  //linha sincrona
  // var fileLista = file.readAsLinesSync();

  //linha assincrona
  // var fileLista = await file.readAsLines();

  var file2 = File('lib/9_files/files/file2.txt');
  await file2.writeAsString('Douglas Poma\n', mode: FileMode.append);

  var listaNomes = ['Douglas', 'Elaine', 'Osvaldo'];
  var file3 = File('lib/9_files/files/file3.txt');
  var writeFile = file3.openWrite();
  for (var nome in listaNomes) {
    writeFile.write('$nome\n');
  }
}
